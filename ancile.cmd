@ECHO off
@REM Ancile
@REM Block all windows spying and unwanted upgrades.

:INIT
@REM Configure the default environment
SET APPNAME=Ancile
SET VERSION=0.9.1

FOR /F "usebackq tokens=1,2 delims==" %%i IN (`wmic os get LocalDateTime /VALUE 2^>NUL`) DO (
	IF '.%%i.'=='.LocalDateTime.' SET ldt=%%j
)
SET UNIDATE=%ldt:~0,4%-%ldt:~4,2%-%ldt:~6,2%

SET CURRDIR=%~dp0
SET LIBDIR=%CURRDIR%lib
SET SCRIPTDIR=%CURRDIR%scripts
SET TEMPDIR=%TEMP%\%APPNAME%
SET LOGFILE=%CURRDIR%%APPNAME%-%VERSION%_%UNIDATE%.log

@REM Load user environment configuration
SET USERCONFIG=%CURRDIR%config.txt
IF EXIST "%USERCONFIG%" (
	FOR /F "eol=# delims=" %%i in ('TYPE "%USERCONFIG%"') DO (
		CALL SET %%i
	)
) ELSE (
	ECHO User config "%USERCONFIG%" does not exist.
	ECHO Using default configuration.
)

@REM Configure internal environment variables
IF NOT "%SYSARCH%"=="32" (
	IF NOT "%SYSARCH%"=="64" (
		SET SYSARCH=32
		wmic os get osarchitecture 2>&1|findstr /I 64-bit >nul 2>&1 && SET SYSARCH=64
	)
)

SET BINSETACL=%LIBDIR%\setacl-%SYSARCH%.exe
SET BINSED=%LIBDIR%\sed.exe

MD "%TEMPDIR%" >nul 2>&1

SET ANCERRLVL=0

:BEGIN
ECHO Starting %APPNAME% v%VERSION%

@REM Make sure we're running as an administrator
net session >nul 2>&1
IF %ERRORLEVEL% NEQ 0 ECHO This script requires Administrative privileges. Exiting. & PAUSE & EXIT 1

@REM Make sure that the directory we're logging to exists
FOR %%i IN ("%LOGFILE%") DO (
	IF NOT EXIST "%%~di%%~pi" (
		ECHO Logging directory "%%~di%%~pi" does not exist.
		ECHO Please make sure the path is correct.
		SET /A ANCERRLVL=ANCERRLVL+1
		GOTO ERRCHK
	)
)

:MAIN
@REM Begin Logging
ECHO [%DATE% %TIME%] ### %APPNAME% v%VERSION% ################################# >> "%LOGFILE%"
ECHO [%DATE% %TIME%] Created by Matthew Linton >> "%LOGFILE%"
ECHO [%DATE% %TIME%] https://github.com/matthewlinton/ancile >> "%LOGFILE%"
ECHO [%DATE% %TIME%] ########################################################## >> "%LOGFILE%"
IF NOT ".%IDSTRING%"=="." ECHO %IDSTRING%>> "%LOGFILE%"

@REM Log System information
IF NOT "%DOSYSTEMINFO%"=="N" (
	ECHO Collecting system information ...
	systeminfo >> "%LOGFILE%"
	powershell -executionpolicy remotesigned -Command $PSVersionTable >> "%LOGFILE%"
)

:SYSPREP
@REM Sync Windows time
CALL "%SCRIPTDIR%\synctime.cmd"

@REM Create restore point
CALL "%SCRIPTDIR%\mkrestore.cmd"

:SCRIPTS
@REM Take ownership of registry keys
CALL "%SCRIPTDIR%\registry\regown.cmd"
@REM Disable remote registry
CALL "%SCRIPTDIR%\disableremreg.cmd"
@REM Disable unwanted services
CALL "%SCRIPTDIR%\disableservices.cmd"
@REM Disable scheduled tasks
call "%SCRIPTDIR%\tasks\disabletasks.cmd"
@REM Disable automated delivery of internet explorer
CALL "%SCRIPTDIR%\inetexplore\disableie.cmd"
@REM Disable Windows 10 upgrade
CALL "%SCRIPTDIR%\disablewinx.cmd"
@REM Uninstall and hide unwanted updates
CALL "%SCRIPTDIR%\updates\disableupdates.cmd"
@REM Block malicious hosts
CALL "%SCRIPTDIR%\hosts\blockhosts.cmd"

:ERRCHK
@REM Check for error condition
IF %ANCERRLVL% GTR 0 GOTO ENDFAIL
GOTO ENDSUCCESS

:ENDFAIL
IF EXIST "%LOGFILE%" ECHO [%DATE% %TIME%] END : %APPNAME% v%VERSION% completed with %ANCERRLVL% error(s) >> "%LOGFILE%"
ECHO %APPNAME% v%VERSION% has completed with errors.
IF EXIST "%LOGFILE%" ECHO See "%LOGFILE%" for more indformation.
ECHO Press any key to exit.
GOTO END

:ENDSUCCESS
IF EXIST "%LOGFILE%" ECHO [%DATE% %TIME%] END : %APPNAME% v%VERSION% completed successfully >> "%LOGFILE%"
ECHO %APPNAME% v%VERSION% has completed successfully.
IF EXIST "%LOGFILE%" ECHO See "%LOGFILE%" for more indformation.
ECHO Press any key to exit.
GOTO END

:END
PAUSE >nul
