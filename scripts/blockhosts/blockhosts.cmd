@REM blockhosts - Block potentialy malicious hosts.
@REM 			  routes.txt - list of hosts/networks that should be blocked through routing tables
@REM 			  hosts.txt - Lists of hosts that will be blocked through the hosts file

SET HOSTSFILE=%SYSTEMDRIVE%\windows\system32\drivers\etc\hosts
SET ROUTELIST=%SCRIPTDIR%\blockhosts\routes.txt
SET HOSTLIST=%SCRIPTDIR%\blockhosts\hosts.txt
SET ROUTETMP=%TEMP%\ancile-blockhosts_%DATE%.tmp

ECHO [%DATE% %TIME%] BEGIN HOST BLOCKING >> "%LOGFILE%"
ECHO * Blocking malicious hosts ... 

@REM Block hosts using the routing table
route print 2>nul > "%ROUTETMP%"
ECHO Routing table entries added: >> "%LOGFILE%"
ECHO ** Updating routing table
FOR /F %%H in ('TYPE "%ROUTELIST%"') DO (
	findstr %%H "%ROUTETMP%" >nul 2>&1
	IF %ERRORLEVEL% NEQ 0 route -p ADD %%H 0.0.0.0 >nul 2>&1
	ECHO   %%H >> "%LOGFILE%"
)
DEL /f /q "%ROUTETMP%" >nul 2>&1

@REM Block hosts using the system hosts file
ECHO Hosts file entries added: >> "%LOGFILE%"
ECHO ** Modifying hosts file
FOR /F %%H in ('TYPE "%HOSTLIST%"') DO (
	findstr " %%H" "%HOSTSFILE%" >nul 2>&1
	IF %ERRORLEVEL% NEQ 0 ECHO 0.0.0.0 %%H >> "%HOSTSFILE%"
	ECHO   %%H >> "%LOGFILE%"
)

ECHO [%DATE% %TIME%] END HOST BLOCKING >> "%LOGFILE%"
ECHO   DONE