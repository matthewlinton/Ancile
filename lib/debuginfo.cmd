@ECHO off
@REM debuginfo - generate a log file with debug info about the user's default system.

SETLOCAL

@REM Configure the default environment
SET _appname=Ancile_debuginfo
SET _version=1.0

:CONFIG
@REM Generate universal non locale specific date
FOR /F "usebackq tokens=1,2 delims==" %%i IN (`wmic os get LocalDateTime /VALUE 2^>NUL`) DO (
	IF '.%%i.'=='.LocalDateTime.' SET ldt=%%j
)
SET _unidate=%ldt:~0,4%-%ldt:~4,2%-%ldt:~6,2%

@REM configure script variables
SET _currdir=%~dp0
SET _logfile=%_currdir%%_appname%.%_unidate%.log

:BEGIN
ECHO %_appname% v%_version%
ECHO.

@REM Begin Logging
ECHO [%DATE% %TIME%] ### %_appname% v%_version% ################################# > "%_logfile%"
ECHO [%DATE% %TIME%] Created by Matthew Linton >> "%_logfile%"
ECHO [%DATE% %TIME%] https://bitbucket.org/matthewlinton/ancile/ >> "%_logfile%"
ECHO [%DATE% %TIME%] ############################################################ >> "%_logfile%"

@REM Check Administrator privlage
net session >nul 2>&1

IF %ERRORLEVEL% NEQ 0 (
	ECHO *** WARNING: User does not have Administrative rights >> "%_logfile%"
	ECHO WARNING: You do not have administrative rights
)

@REM OS Version
ver >> "%_logfile%"
ECHO. >> "%_logfile%"

@REM Get command
ECHO COMMAND: %0 >> "%_logfile%"
ECHO. >> "%_logfile%"

@REM Get environment
ECHO Gathering environment information ...
ECHO [%DATE% %TIME%] BEGIN ENVIRONMENT ############################################################ >> "%_logfile%"

SET >> "%_logfile%"

ECHO [%DATE% %TIME%] END ENVIRONMENT ############################################################ >> "%_logfile%"
ECHO. >> "%_logfile%"

@REM Gather user information
ECHO Fetching user information ...
ECHO [%DATE% %TIME%] BEGIN USER ############################################################ >> "%_logfile%"

whoami /all >> "%_logfile%" 2>&1

ECHO [%DATE% %TIME%] END USER ############################################################ >> "%_logfile%"
ECHO. >> "%_logfile%"

@REM Gather system information
ECHO Fetching system information ...
ECHO [%DATE% %TIME%] BEGIN SYSTEM ############################################################ >> "%_logfile%"

systeminfo >> "%_logfile%"

ECHO [%DATE% %TIME%] END SYSTEM ############################################################ >> "%_logfile%"
ECHO. >> "%_logfile%"

@REM Check powershell environment
ECHO Fetching Powershell Environment ...
ECHO [%DATE% %TIME%] BEGIN POWERSHELL ############################################################ >> "%_logfile%"

powershell -executionpolicy remotesigned -Command $PSVersionTable >> "%_logfile%"

ECHO [%DATE% %TIME%] END POWERSHELL ############################################################ >> "%_logfile%"
ECHO. >> "%_logfile%"

@REM Check internet connection
ECHO Checking internet connection ...
ECHO [%DATE% %TIME%] BEGIN INTERNET ############################################################ >> "%_logfile%"

ping -n 1 bitbucket.org >nul 2>&1

IF %ERRORLEVEL% NEQ 0 (
	ECHO *** WARNING: Unable to connect to the internet >> "%_logfile%"
) ELSE (
	ECHO Network Connection Detected >> "%_logfile%"
)

tracert bitbucket.org >> "%_logfile%" 2>&1

ECHO [%DATE% %TIME%] END INTERNET ############################################################ >> "%_logfile%"
ECHO. >> "%_logfile%"

:FINISH
ECHO.
ECHO Your system information can be found in the file:
ECHO "%_logfile%"
ECHO. >> "%_logfile%"
ECHO. >> "%_logfile%"

:END
ECHO Press any key to exit.
PAUSE >nul



ENDLOCAL