@ECHO off
@REM clearallroutes - Clear ALL static routing information from the routing table
@REM				  CAUTION This may break your network. Use at your own risk.
@REM				  This is a standalone script and does not require Ancile to launch it.


@REM Make sure we're running as an administrator
net session >nul 2>&1
IF %ERRORLEVEL% NEQ 0 ECHO This script requires Administrative privileges. Exiting. & PAUSE & EXIT 1

ECHO.
ECHO !!! This will delete ALL routes in your routing table.
ECHO !!! This could break routing/networking on your system.
ECHO !!! Before you continue you may want to back up your routing table.
ECHO.

SET /p yesno="Are you SURE you want to continue? (y/N):  "
IF /i "%yesno:~,1%" equ "y" GOTO DELROUTE
IF /i "%yesno:~,1%" equ "Y" GOTO DELROUTE
GOTO END

:DELROUTE
SET rkey=HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\PersistentRoutes
FOR /f "tokens=1,2,3,* delims=," %%i IN ('reg query %rkey% ^| find "REG_SZ"') DO (
   route delete %%i mask %%j %%k
)
ECHO Operation Complete

:END
PAUSE