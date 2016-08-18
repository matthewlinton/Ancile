@ECHO off
@REM Ancile
@REM Block all windows spying and unwanted upgrades.

@REM Configure the environment
SET APPNAME=ancile
SET VERSION=1.0
wmic os get osarchitecture 2>&1|findstr /i 64-bit >nul 2>&1 && SET ARCH=64 || SET ARCH=32

SET CURRDIR="%~dp0"
SET LIBDIR="%CURRDIR%lib"
SET SCRIPTDIR="%CURRDIR%scripts"

SET LOGFILE="%CURRDIR%%APPNAME%_%VERSION%_%DATE%.log"

@REM Make sure we're running as an administrator
net session >nul 2>&1
IF %errorlevel% NEQ 0 ECHO This script requires Administrative privileges. Exiting. & PAUSE & EXIT 1

@REM Begin Logging
ECHO ##### BEGIN %APPNAME% v%VERSION% %DATE% %TIME% >> "%LOGFILE%"
ECHO Created by Matthew Linton https://github.com/matthewlinton/ancile >> "%LOGFILE%"
ECHO Starting %APPNAME% v%VERSION%

@REM Force Sync of Windows time
CALL "%SCRIPTDIR%\synctime.cmd"

GOTO END
@REM Create restore point
CALL "%SCRIPTDIR%\mkrestore.cmd"
@REM Take ownership of registry keys
CALL "%SCRIPTDIR%\regown\regown.cmd"
@REM Block malicious hosts
CALL "%SCRIPTDIR%\blockhosts\blockhosts.cmd"
@REM Configure Windows update
CALL "%SCRIPTDIR%\winupdate.cmd"
@REM Disable automated delivery of internet explorer
CALL "%SCRIPTDIR%\disableie\disableie.cmd"
@REM Disable Microsoft Customer Experience Improvement Program
CALL "%SCRIPTDIR%\disableceip.cmd"
@REM Disable Get Windows 10 
CALL "%SCRIPTDIR%\disablegwx.cmd"
@REM Disable remote registry
CALL "%SCRIPTDIR%\disableremreg.cmd"
@REM Disable scheduled tasks
call "%SCRIPTDIR%\tasks\disabletasks.cmd"
@REM Disable SkyDrive
CALL "%SCRIPTDIR%\disableskydrive.cmd"
@REM Disable SpyNet
CALL "%SCRIPTDIR%\disablespynet.cmd"
@REM Disable Telemitry
CALL "%SCRIPTDIR%\disabletelemetry.cmd"
@REM Disable WIFISense
CALL "%SCRIPTDIR%\disablewifisense.cmd"
@REM Disable Windows 10 upgrade
CALL "%SCRIPTDIR%\disablewindowsx.cmd"
@REM Remove Windows diagnostics tracking
CALL "%SCRIPTDIR%\disablediagtrak.cmd"
@REM Uninstall and hide unwanted updates
CALL "%SCRIPTDIR%\disableupdates\disableupdates.cmd"

:ENDSUCCESS
ECHO [ END ancile v1.18 completed successfully %DATE% %TIME% >> "%LOGFILE%"
ECHO [ %APPNAME% v%VERSION% Has completed successfully. >> "%LOGFILE%"
ECHO %APPNAME% has completed successfully. Press any key to exit.
pause >nul

:END
PAUSE
