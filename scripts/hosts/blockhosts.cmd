@REM blockhosts - Block potentialy malicious hosts.
@REM 			  routes.txt - list of hosts/networks that should be blocked through routing tables
@REM 			  hosts.txt - Lists of hosts that will be blocked through the hosts file

Setlocal EnableDelayedExpansion

SET HOSTSFILE=%SYSTEMDRIVE%\windows\system32\drivers\etc\hosts
SET IPLIST=%SCRIPTDIR%\hosts\hostsip.txt
SET HOSTLIST=%SCRIPTDIR%\hosts\hostsdns.txt

SET TMPHOSTS=%TEMP%\%APPNAME%_%VERSION%.hosts.tmp

SET RULENAME=%APPNAME% - Block Malicious IP Addresses

SET LISTBEGIN=# Start of entries inserted by %APPNAME%
SET LISTEND=# End of entries inserted by %APPNAME%

ECHO [%DATE% %TIME%] BEGIN HOST BLOCKING >> "%LOGFILE%"
ECHO * Blocking malicious hosts ... 
ECHO   This may take a long time. Please be patient.

@REM Block hosts using the system hosts file
@REM This can take a very long time for large host files.
@REM TODO: Figure out a better(faster) way to do this.
ECHO Modifying hosts file: >> "%LOGFILE%"
IF NOT "%MODHOSTS%"=="N" (
	ECHO ** Updating hosts file
	IF EXIST "%TMPHOSTS%" DEL "%TMPHOSTS%" >> "%LOGFILE%" 2>&1
	SET wout=1
	SET linecount=0
	FOR /F "delims=" %%i IN ('TYPE "%HOSTSFILE%"') DO (
		IF "%%i"=="%LISTBEGIN%" SET wout=0
		IF !wout! EQU 1 ECHO %%i>> "%TMPHOSTS%"
		IF "%%i"=="%LISTEND%" SET wout=1
		SET /A linecount=linecount+1
	)
	ECHO Processed !linecount! Lines >> "%LOGFILE%"
	COPY "%TMPHOSTS%" "%HOSTSFILE%" >> "%LOGFILE%" 2>&1
	ECHO Adding hosts file entries: >> "%LOGFILE%"
	ECHO %LISTBEGIN%>> "%HOSTSFILE%"
	SET match=0
	FOR /F %%k IN ('TYPE "%HOSTLIST%"') DO (
		FOR /F "tokens=1,2" %%i IN ('findstr /V /C:"#" "%TMPHOSTS%"') DO (
			IF "%%k"=="%%j" (
				SET match=1
				ECHO Duplicate: %%k >> "%LOGFILE%"
			) 
		)
		IF !match! EQU 0 (
			ECHO 127.0.0.1	%%k>> "%HOSTSFILE%"
			ECHO Adding: %%k >> "%LOGFILE%"
		)
		SET match=0
	)
	ECHO %LISTEND%>> "%HOSTSFILE%"
) ELSE (
	ECHO Skipping modification of hosts file >> "%LOGFILE%"
	ECHO ** Skipping hosts file
)

@REM Block hosts using the routing table and Windows Firewall
ECHO Routing table entries added: >> "%LOGFILE%"
IF NOT "%MODROUTES%"=="N" (
	ECHO ** Updating routing table
	SET rkey=HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\PersistentRoutes
	SET ipaddrlist=
	FOR /F "tokens=1,2,* delims=, " %%i IN ('TYPE "%IPLIST%"') DO (
		reg QUERY %rkey% /V %%i* >nul; 2>&1
		IF %ERRORLEVEL% == 1 (
			ECHO Adding Route : %%i >> "%LOGFILE%"
			route ADD %%i MASK %%j 0.0.0.0 -p >> "%LOGFILE%" 2>&1
		) ELSE (
			ECHO Route Already Present : %%i >> "%LOGFILE%"
		)
	)
) ELSE (
	ECHO Skipping modification of routing table >> "%LOGFILE%"
	ECHO ** Skipping routing table
)

@REM Block hosts using the Windows firewall.
ECHO Firewall entries added: >> "%LOGFILE%"
IF NOT "%MODFIREWALL%"=="N" (
	ECHO ** Updating firewall rules
	SET ipaddrlist=
	FOR /F "tokens=1,* delims=, " %%i IN ('TYPE "%IPLIST%"') DO (
	IF ".!ipaddrlist!"=="." (
			SET ipaddrlist=%%i
		) ELSE (
			SET ipaddrlist=!ipaddrlist!,%%i
		)
	)
	ECHO !ipaddrlist! >> "%LOGFILE%"
	ECHO Deleting old firewall ruleset >> "%LOGFILE%"
	netsh advfirewall firewall delete rule name="%RULENAME%" >> "%LOGFILE%" 2>&1
	ECHO Adding updated firewall ruleset >> "%LOGFILE%"
	netsh advfirewall firewall add rule name="%RULENAME%" dir=out action=block remoteip=!ipaddrlist! >> "%LOGFILE%" 2>&1
) ELSE (
	ECHO Skipping modification of Windows firewall rules >> "%LOGFILE%"
	ECHO ** Skipping firewall rules
)
ECHO [%DATE% %TIME%] END HOST BLOCKING >> "%LOGFILE%"
ECHO   DONE

Setlocal DisableDelayedExpansion