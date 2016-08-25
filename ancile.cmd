@ECHO off
@REM Ancile
@REM Block all windows spying and unwanted upgrades.

:INIT
@REM Configure the environment
SET APPNAME=Ancile
SET VERSION=0.3
SET ARCH=32
wmic os get osarchitecture 2>&1|findstr /i 64-bit >nul 2>&1 && SET ARCH=64

SET CURRDIR=%~dp0
SET LIBDIR=%CURRDIR%lib
SET SCRIPTDIR=%CURRDIR%scripts
SET LOGFILE=%CURRDIR%%APPNAME%-%VERSION%_%DATE%.log

SET BINSETACL=%LIBDIR%\setacl-%ARCH%.exe
SET BINSED=%LIBDIR%\sed.exe

SET ANCERRLVL=0

@REM Make sure we're running as an administrator
net session >nul 2>&1
IF %ERRORLEVEL% NEQ 0 ECHO This script requires Administrative privileges. Exiting. & PAUSE & EXIT 1

@REM Begin Logging
ECHO [%DATE% %TIME%] ### %APPNAME% v%VERSION% ################################# >> "%LOGFILE%"
ECHO [%DATE% %TIME%] Created by Matthew Linton >> "%LOGFILE%"
ECHO [%DATE% %TIME%] https://github.com/matthewlinton/ancile >> "%LOGFILE%"
ECHO [%DATE% %TIME%] ########################################################## >> "%LOGFILE%"
ECHO Starting %APPNAME% v%VERSION%

@REM Log System information
ECHO Collecting system information ...
systeminfo >> "%LOGFILE%"

@REM Sync Windows time
CALL "%SCRIPTDIR%\synctime.cmd"

@REM Create restore point
CALL "%SCRIPTDIR%\mkrestore.cmd"

:BEGIN
@REM Take ownership of registry keys
CALL "%SCRIPTDIR%\regown\regown.cmd"
@REM Disable remote registry
CALL "%SCRIPTDIR%\disableremreg.cmd"
@REM Disable Windows 10 upgrade
CALL "%SCRIPTDIR%\disablewinx.cmd"
@REM Disable scheduled tasks
call "%SCRIPTDIR%\tasks\disabletasks.cmd"
@REM Configure Windows update
CALL "%SCRIPTDIR%\winupdate.cmd"
@REM Uninstall and hide unwanted updates
CALL "%SCRIPTDIR%\disableupdates\disableupdates.cmd"
@REM Disable automated delivery of internet explorer
CALL "%SCRIPTDIR%\disableie\disableie.cmd"
@REM Disable Microsoft Customer Experience Improvement Program
CALL "%SCRIPTDIR%\disablewifisense.cmd"
@REM Remove Windows diagnostics tracking
CALL "%SCRIPTDIR%\disableceip.cmd"
@REM Disable SpyNet
CALL "%SCRIPTDIR%\disablespynet.cmd"
@REM Disable Telemitry
CALL "%SCRIPTDIR%\disabletelemetry.cmd"
@REM Disable WIFISense
CALL "%SCRIPTDIR%\disablediagtrak.cmd"
@REM Disable SkyDrive
CALL "%SCRIPTDIR%\disableskydrive.cmd"
@REM Block malicious hosts
CALL "%SCRIPTDIR%\blockhosts\blockhosts.cmd"

:ERRCHK
@REM Check for error condition
IF %ANCERRLVL% GTR 0 GOTO ENDFAIL
GOTO ENDSUCC

:ENDFAIL
ECHO [%DATE% %TIME%] END : %APPNAME% v%VERSION% completed with %ANCERRLVL% error(s) >> "%LOGFILE%"
ECHO %APPNAME% v%VERSION% has completed with errors.
ECHO See "%LOGFILE%" for more indformation.
ECHO Press any key to exit.
GOTO END

:ENDSUCC
ECHO [%DATE% %TIME%] END : %APPNAME% v%VERSION% completed successfully >> "%LOGFILE%"
ECHO %APPNAME% v%VERSION% has completed successfully.
ECHO Press any key to exit.
GOTO END

:END
PAUSE >nul
