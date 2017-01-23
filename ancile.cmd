@ECHO off
@REM Ancile
@REM Block all windows spying and unwanted upgrades.

:INIT
@REM Configure the default environment
SET APPNAME=Ancile
SET VERSION=1.9

@REM Make sure the path variable contians everything we need
SET PATH=%PATH%;%SYSTEMROOT%;%SYSTEMROOT%\system32;%SYSTEMROOT%\System32\Wbem;%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\

FOR /F "usebackq tokens=1,2 delims==" %%i IN (`wmic os get LocalDateTime /VALUE 2^>NUL`) DO (
	IF '.%%i.'=='.LocalDateTime.' SET ldt=%%j
)
SET UNIDATE=%ldt:~0,4%-%ldt:~4,2%-%ldt:~6,2%

SET CURRDIR=%~dp0
SET DATADIR=%CURRDIR%data
SET LIBDIR=%CURRDIR%lib
SET SCRIPTDIR=%CURRDIR%plugins
SET TEMPDIR=%TEMP%\%APPNAME%
SET LOGFILE=%CURRDIR%%APPNAME%-%VERSION%_%UNIDATE%.log

SET SYSARCH=32
wmic os get osarchitecture 2>&1|findstr /I 64-bit >nul 2>&1 && SET SYSARCH=64

@REM Set Ancile error level
SET ANCERRLVL=0

@REM Load user environment configuration
SET USERCONFIG=%CURRDIR%config.ini

IF EXIST "%USERCONFIG%" (
	FOR /F "eol=# delims=" %%i in ('TYPE "%USERCONFIG%"') DO (
		CALL SET %%i
	)
) ELSE (
	ECHO User config "%USERCONFIG%" does not exist. Using default configuration.
	SET /A ANCERRLVL+=1
)

@REM Set the OS version
FOR /F "tokens=4-5 delims=. " %%i IN ('ver') DO SET OSVERSION=%%i.%%j

@REM Add the LIB directory to the user's path
SET PATH=%PATH%;%LIBDIR%

@REM create the temp directory
IF NOT EXIST "%TEMPDIR%" MKDIR "%TEMPDIR%" >nul 2>&1

:BEGIN
ECHO Starting %APPNAME% v%VERSION%
IF "%DEBUG%"=="Y" ECHO Debugging Enabled
ECHO.

@REM Make sure that the directory we're logging to exists
FOR %%i IN ("%LOGFILE%") DO (
	IF NOT EXIST "%%~di%%~pi" (
		ECHO Logging directory "%%~di%%~pi" does not exist.
		ECHO Please make sure the path is correct.
		SET /A ANCERRLVL+=1
		GOTO ERRORCHECK
	)
)


:MAIN
@REM Begin Logging
ECHO [%DATE% %TIME%] ### %APPNAME% v%VERSION% ################################# >> "%LOGFILE%"
ECHO [%DATE% %TIME%] Created by Matthew Linton >> "%LOGFILE%"
ECHO [%DATE% %TIME%] https://bitbucket.org/matthewlinton/ancile/ >> "%LOGFILE%"
IF "%DEBUG%"=="Y" ECHO [%DATE% %TIME%] Debugging Enabled >> "%LOGFILE%"
ECHO [%DATE% %TIME%] ########################################################## >> "%LOGFILE%"
IF NOT "%IDSTRING%"=="" ECHO %IDSTRING%>> "%LOGFILE%"

@REM Make sure we're running as an administrator
net session >nul 2>&1
IF NOT "%CHECKADMIN%"=="N" (
	IF %ERRORLEVEL% NEQ 0 (
		ECHO FATAL ERROR: User does not have Administrative rights. >> "%LOGFILE%"
		whoami /all >> "%LOGFILE%" 2>&1
		ECHO This script requires Administrative privileges.
		ECHO.
		SET /A ANCERRLVL+=1
		GOTO ERRORCHECK
	)
) ELSE (
	ECHO Admin check disabled. Enabling Debug by default.
	ECHO WARNING: User has disabled Admin Check. Enabling Debug. >> "%LOGFILE%"
	SET DEBUG=Y
)

@REM Log System information when Debugging
IF "%DEBUG%"=="Y" (
	ECHO Collecting System Information
	ECHO %0 >> "%LOGFILE%"
	DIR "%CURRDIR%" >> "%LOGFILE%"
	whoami /all >> "%LOGFILE%" 2>&1
	systeminfo >> "%LOGFILE%"
	SET >> "%LOGFILE%"
	powershell -executionpolicy remotesigned -Command $PSVersionTable >> "%LOGFILE%"
)

@REM Check to see if we're connected to the internet
ping -n 1 bitbucket.org >nul 2>&1

IF "%NETCONNECTED%"=="" (
	ECHO Checking Network Connection: >> "%LOGFILE%"
	
	IF %ERRORLEVEL% NEQ 0 (
		ECHO Unable to connect to the internet >> "%LOGFILE%"
		ECHO Network Connection Not Detected
		tracert bitbucket.org >> "%LOGFILE%" 2>&1
		SET NETCONNECTED=0
		SET /A ANCERRLVL+=1
	) ELSE (
		ECHO Network Connection Detected >> "%LOGFILE%"
		SET NETCONNECTED=1
	)
) ELSE (
	ECHO NETCONNECTED manually set "%NETCONNECTED%" >> "%LOGFILE%"
)

:SYSPREP
@REM Sync Windows time
ECHO. >> "%LOGFILE%"
CALL "%LIBDIR%\syncwindowstime.cmd"

@REM Create restore point
ECHO. >> "%LOGFILE%"
CALL "%LIBDIR%\mkrestorepoint.cmd"

@REM Update Data Files
ECHO. >> "%LOGFILE%"
CALL "%LIBDIR%\automaticupdates.cmd"
ECHO.

@REM Take ownership of registry keys
ECHO. >> "%LOGFILE%"
CALL "%LIBDIR%\registrykeyownership.cmd"

:PLUGINS
@REM Look for plugins in the script directory
ECHO.
ECHO Loading Plugins:
ECHO.
FOR /D %%i IN ("%SCRIPTDIR%\*.*") DO (
	IF EXIST "%SCRIPTDIR%\%%~nxi\%%~nxi.cmd" (
		ECHO. >> "%LOGFILE%"
		IF "%DEBUG%"=="Y" ECHO "%SCRIPTDIR%\%%~nxi\%%~nxi.cmd" >> "%LOGFILE%"
		CALL "%SCRIPTDIR%\%%~nxi\%%~nxi.cmd"
		ECHO.
	)
)

:ERRORCHECK
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
