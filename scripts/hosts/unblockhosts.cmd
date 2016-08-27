@REM ECHO off
@REM unblockhosts - Remove host blocking from the routing table, firewall and the hosts file.
@REM				This is a standalone script and does not require Ancile to launch it.
@REM		routes.txt - list of hosts/networks that should be unblocked through routing tables
@REM 		hosts.txt - Lists of hosts that will be unblocked through the hosts file

SET CURRDIR=%~dp0
SET HOSTSFILE=%SYSTEMDRIVE%\windows\system32\drivers\etc\hosts
SET ROUTELIST=%CURRDIR%hostsip.txt
SET HOSTLIST=%CURRDIR%hostsdns.txt
SET TMPHOSTS=%TEMP%\

ECHO Unblocking hosts is not yet implimented.
GOTO END

@REM Make sure we're running as an administrator
net session >nul 2>&1
IF %ERRORLEVEL% NEQ 0 ECHO This script requires Administrative privileges. Exiting. & PAUSE & EXIT 1

ECHO * Undoing Ancile host blocking ... 

@REM Remove hosts added by Ancile
ECHO * Clearing hosts file
IF EXIST "%TMPHOSTS%" DEL "%TMPHOSTS%"
Setlocal EnableDelayedExpansion
SET wout=1
SET linecount=0
FOR /F "delims=" %%i IN ('TYPE "%HOSTSFILE%"') DO (
	IF "%%i"=="%LISTBEGIN%" SET wout=0
	IF !wout! EQU 1 ECHO %%i>> "%TMPHOSTS%"
	IF "%%i"=="%LISTEND%" SET wout=1
	SET /A linecount=linecount+1
)
Setlocal DisableDelayedExpansion

@REM unBlock hosts using the routing table
ECHO * CLearing routing table
FOR /F "tokens=1,2,* delims=, " %%i in ('TYPE "%ROUTELIST%"') DO (
	ECHO | set /p=%%i - >> "%LOGFILE%"
	route ADD %%i MASK %%j 0.0.0.0 -p >> "%LOGFILE%" 2>&1
)

:END
PAUSE