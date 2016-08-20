REM @ECHO off
@REM unblockhosts - Remove host blocking from the routing table and the hosts file.
@REM				This is a standalone script and does not require Ancile to launch it.
@REM 			  routes.txt - list of hosts/networks that should be blocked through routing tables
@REM 			  hosts.txt - Lists of hosts that will be blocked through the hosts file

SET CURRDIR=%~dp0
SET ROUTELIST=%CURRDIR%routes.txt
SET HOSTLIST=%CURRDIR%hosts.txt
SET HOSTSFILE=%SYSTEMDRIVE%\windows\system32\drivers\etc\hosts
SET ROUTETMP=%TEMP%\ancile-unblockhosts_%DATE%.tmp

@REM Make sure we're running as an administrator
net session >nul 2>&1
IF %ERRORLEVEL% NEQ 0 ECHO This script requires Administrative privileges. Exiting. & PAUSE & EXIT 1

@REM unBlock hosts in the routing table
route print 2>nul > "%ROUTETMP%"
ECHO ** Deleting entries from the routing table ...
FOR /F %%H in ('TYPE "%ROUTELIST%"') DO (
	findstr %%H "%ROUTETMP%" >nul 2>&1
	IF %ERRORLEVEL% NEQ 0 route DELETE %%H >nul 2>&1
	ECHO   %%H REMOVED
)
DEL /f /q "%ROUTETMP%" >nul 2>&1

ECHO HOSTS FILE UNBLOCK NOT YET IMPLIMENTED!!!
ECHO You will need to do this manually
GOTO END

@REM unBlock hosts in the hosts file
ECHO ** Modifying hosts file ...
FOR /F %%H in ('TYPE "%HOSTLIST%"') DO (
	findstr "%%H" "%HOSTSFILE%" >nul 2>&1
	IF %ERRORLEVEL% NEQ 0 ECHO 0.0.0.0 %%H >> "%HOSTSFILE%"
	ECHO   %%H >> "%LOGFILE%"
)

findstr " 0.r.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/0.r.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked 0.r.msn.com
)

:END
PAUSE