@REM blockhosts - Block potentialy malicious hosts.
@REM 			  routes.txt - list of hosts/networks that should be blocked through routing tables
@REM 			  hosts.txt - Lists of hosts that will be blocked through the hosts file

SET HOSTSFILE=%SYSTEMDRIVE%\windows\system32\drivers\etc\hosts
SET IPLIST=%SCRIPTDIR%\blockhosts\hostsip.txt
SET HOSTLIST=%SCRIPTDIR%\blockhosts\hostsdns.txt

SET TMPHOSTS=%TEMP%\%APPNAME%_%VERSION%.hosts.tmp

SET LISTBEGIN=# Start of entries inserted by %APPNAME%
SET LISTEND=# End of entries inserted by %APPNAME%

ECHO [%DATE% %TIME%] BEGIN HOST BLOCKING >> "%LOGFILE%"
ECHO * Blocking malicious hosts ... 

@REM Block hosts using the system hosts file
ECHO Hosts file entries added: >> "%LOGFILE%"
ECHO ** Updating hosts file
IF EXIST "%TMPHOSTS%" DEL "%TMPHOSTS%"
Setlocal EnableDelayedExpansion
SET wout=1
FOR /F "delims=" %%i in ('TYPE "%HOSTSFILE%"') DO (
	IF "%%i"=="%LISTBEGIN%" SET wout=0
	IF !wout! EQU 1 ECHO %%i>> "%TMPHOSTS%"
	IF "%%i"=="%LISTEND%" SET wout=0
)
Setlocal DisableDelayedExpansion
FOR /F "delims=" %%i in ('TYPE "%HOSTLIST%"') DO (
	ECHO TODO: Parse Hostlist >> "%LOGFILE%"
)

ECHO TODO: Build new Hosts file >> "%LOGFILE%"

@REM Block hosts using the routing table
ECHO Routing table entries added: >> "%LOGFILE%"
ECHO ** Updating routing table
FOR /F "tokens=1,2,* delims=, " %%i in ('TYPE "%IPLIST%"') DO (
	ECHO | set /p=%%i - >> "%LOGFILE%"
	route ADD %%i MASK %%j 0.0.0.0 -p >> "%LOGFILE%" 2>&1
)

@REM Block hosts using the Windows firewall
ECHO Firewall entries added: >> "%LOGFILE%"
ECHO ** Updating firewall rules
Setlocal EnableDelayedExpansion
SET rulename=%APPNAME% - Block Malicious IP Addresses
SET ipaddrlist=
netsh advfirewall firewall delete rule name="%rulename%" >> "%LOGFILE%" 2>&1
FOR /F "tokens=1,* delims=, " %%i in ('TYPE "%IPLIST%"') DO (
	SET ipaddrlist=!ipaddrlist!,%%i
)
ECHO Adding: !ipaddrlist! >> "%LOGFILE%"
netsh advfirewall firewall add rule name="%rulename%" dir=out action=block remoteip=!ipaddrlist! >> "%LOGFILE%" 2>&1


ECHO [%DATE% %TIME%] END HOST BLOCKING >> "%LOGFILE%"
ECHO   DONE