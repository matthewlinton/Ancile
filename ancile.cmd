@ECHO off
@REM Ancile
@REM Block all windows spying and unwanted upgrades.

:INIT
@REM Configure the default environment
SET APPNAME=Ancile
SET VERSION=1.7

SET PATH=%PATH%;%SYSTEMROOT%;%SYSTEMROOT%\system32;%SYSTEMROOT%\System32\Wbem;%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\

FOR /F "usebackq tokens=1,2 delims==" %%i IN (`wmic os get LocalDateTime /VALUE 2^>NUL`) DO (
	IF '.%%i.'=='.LocalDateTime.' SET ldt=%%j
)
SET UNIDATE=%ldt:~0,4%-%ldt:~4,2%-%ldt:~6,2%

SET CURRDIR=%~dp0
SET DATADIR=%CURRDIR%data
SET LIBDIR=%CURRDIR%lib
SET SCRIPTDIR=%CURRDIR%scripts
SET TEMPDIR=%TEMP%\%APPNAME%
SET LOGFILE=%CURRDIR%%APPNAME%-%VERSION%_%UNIDATE%.log

@REM Load user environment configuration
SET USERCONFIG=%CURRDIR%config.ini
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

IF NOT EXIST "%TEMPDIR%" MKDIR "%TEMPDIR%" >nul 2>&1
SET ANCERRLVL=0

:BEGIN
ECHO Starting %APPNAME% v%VERSION%
IF "%DEBUG%"=="Y" ECHO Debugging Enabled

@REM Make sure we're running as an administrator
net session >nul 2>&1
IF %ERRORLEVEL% NEQ 0 ECHO This script requires Administrative privileges. Exiting. & PAUSE & EXIT 1

@REM Make sure we're running on the correct OS
@REM Windows 10 (10.0)
@REM Windows 8.1 (6.3)
@REM Windows 8 (6.2)
@REM Windows 7 (6.1)
@REM Windows Vista (6.0)
SET OSCHECK=0
FOR /F "tokens=4-5 delims=. " %%i IN ('ver') DO SET OSVERSION=%%i.%%j
IF "%OSVERSION%" == "6.3" SET OSCHECK=1
IF "%OSVERSION%" == "6.2" SET OSCHECK=1
IF "%OSVERSION%" == "6.1" SET OSCHECK=1
IF %OSCHECK% EQU 0 ECHO This script should only be run under Windows 7 or 8. Exiting. & PAUSE & EXIT 1

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
ECHO [%DATE% %TIME%] https://bitbucket.org/matthewlinton/ancile/ >> "%LOGFILE%"
IF "%DEBUG%"=="Y" ECHO [%DATE% %TIME%]  Debugging Enabled
ECHO [%DATE% %TIME%] ########################################################## >> "%LOGFILE%"
IF NOT ".%IDSTRING%"=="." ECHO %IDSTRING%>> "%LOGFILE%"

@REM Log System information when Debugging
IF "%DEBUG%"=="Y" (
	ECHO Collecting System Information
	systeminfo >> "%LOGFILE%"
	SET >> "%LOGFILE%"
	powershell -executionpolicy remotesigned -Command $PSVersionTable >> "%LOGFILE%"
)

:SYSPREP
@REM Sync Windows time
CALL "%SCRIPTDIR%\synctime.cmd"

@REM Create restore point
CALL "%SCRIPTDIR%\mkrestore.cmd"

@REM Take ownership of registry keys
CALL "%SCRIPTDIR%\regkeyown.cmd"

:SCRIPTS
@REM Look for plugins in the script directory
ECHO Loading Plugins:
ECHO.
FOR /D %%i IN ("%SCRIPTDIR%\*.*") DO (
	IF EXIST "%SCRIPTDIR%\%%~nxi\%%~nxi.cmd" (
		IF "%DEBUG%"=="Y" ECHO "%SCRIPTDIR%\%%~nxi\%%~nxi.cmd" >> "%LOGFILE%"
		CALL "%SCRIPTDIR%\%%~nxi\%%~nxi.cmd"
		ECHO.
	)
)

:ERRCHK
@REM Check for error condition
IF EXIST "%LOGFILE%" ECHO [%DATE% %TIME%] ########################################################## >> "%LOGFILE%"
IF %ANCERRLVL% GTR 0 GOTO ENDFAIL
GOTO ENDSUCCESS

:ENDFAIL
IF EXIST "%LOGFILE%" ECHO [%DATE% %TIME%] END : %APPNAME% v%VERSION% completed with %ANCERRLVL% error(s) >> "%LOGFILE%"
ECHO %APPNAME% v%VERSION% has completed with errors.
GOTO END

:ENDSUCCESS
IF EXIST "%LOGFILE%" ECHO [%DATE% %TIME%] END : %APPNAME% v%VERSION% completed successfully >> "%LOGFILE%"
ECHO %APPNAME% v%VERSION% has completed successfully.
GOTO END

:END
IF EXIST "%LOGFILE%" ECHO See "%LOGFILE%" for more information.
IF EXIST "%LOGFILE%" ECHO [%DATE% %TIME%] ########################################################## >> "%LOGFILE%"
IF EXIST "%LOGFILE%" ECHO. >> "%LOGFILE%"
IF EXIST "%LOGFILE%" ECHO. >> "%LOGFILE%"
ECHO Press any key to exit.
PAUSE >nul
