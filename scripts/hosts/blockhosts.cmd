@REM blockhosts - Block potentialy malicious hosts.
@REM 			  routes.txt - list of hosts/networks that should be blocked through routing tables
@REM 			  hosts.txt - Lists of hosts that will be blocked through the hosts file

Setlocal EnableDelayedExpansion

SET HOSTSFILE=%SYSTEMDRIVE%\windows\system32\drivers\etc\hosts
SET IPLIST=%SCRIPTDIR%\hosts\hostsip.txt
SET HOSTLIST=%SCRIPTDIR%\hosts\hostsdns.txt

SET HTEMPDIR=%TEMP%\%APPNAME%\hosts
SET TMPHOSTS=%HTEMPDIR%\%VERSION%.system.hosts.tmp
SET TMPANCILE=%HTEMPDIR%\%VERSION%.ancile.hosts.tmp

SET RULENAME=%APPNAME% - Block Malicious IP Addresses

SET LISTBEGIN=# Start of entries inserted by %APPNAME%
SET LISTEND=# End of entries inserted by %APPNAME%

ECHO [%DATE% %TIME%] BEGIN HOST BLOCKING >> "%LOGFILE%"
ECHO * Blocking malicious hosts ... 
ECHO   This may take a long time. Please be patient.

@REM Make sure we can edit the hosts file

IF NOT EXIST "%HTEMPDIR%" MKDIR %HTEMPDIR% 2>&1 >> "%LOGFILE%"

@REM Clear old temp hosts files
IF EXIST "%TMPHOSTS%" DEL "%TMPHOSTS%" >> "%LOGFILE%" 2>&1
IF EXIST "%TMPANCILE%" DEL "%TMPANCILE%" >> "%LOGFILE%" 2>&1

@REM Block hosts using the system hosts file
ECHO Modifying hosts file: >> "%LOGFILE%"
IF NOT "%MODHOSTS%"=="N" (
	ECHO ** Updating hosts file

	SET wout=1
	SET linecount=0
	FOR /F "delims=" %%i IN ('TYPE "%HOSTSFILE%"') DO (
		IF "%%i"=="%LISTBEGIN%" SET wout=0
		IF !wout! EQU 1 ECHO %%i>> "%TMPHOSTS%"
		IF "%%i"=="%LISTEND%" SET wout=1
		SET /A linecount=linecount+1
	)
	ECHO Processed !linecount! Lines >> "%LOGFILE%"
	
	ECHO Adding hosts file entries: >> "%LOGFILE%"
	IF EXIST "%TMPANCILE%" DEL "%TMPANCILE%" >> "%LOGFILE%" 2>&1
	ECHO %LISTBEGIN%>> "%TMPANCILE%"
	SET match=0
	FOR /F %%k IN ('TYPE "%HOSTLIST%"') DO (
		FOR /F "tokens=1,2" %%i IN ('findstr /V /C:"#" "%TMPHOSTS%"') DO (
			IF "%%k"=="%%j" (
				SET match=1
				IF NOT "%DEBUG%"=="N" ECHO Duplicate: %%k >> "%LOGFILE%"
			) 
		)
		IF !match! EQU 0 (
			ECHO %HOSTSREDIRECT%	%%k>> "%TMPANCILE%"
			IF NOT "%DEBUG%"=="N" ECHO Adding: %%k >> "%LOGFILE%"
		)
		SET match=0
	)
	ECHO %LISTEND%>> "%TMPANCILE%"
	
	attrib -R "%HOSTSFILE%"
	COPY /B "%TMPHOSTS%" + "%TMPANCILE%" "%HOSTSFILE%" >> "%LOGFILE%" 2>&1
	IF %ERRORLEVEL% NEQ 0 SET /A ANCERRLVL=ANCERRLVL+1 & ECHO ERROR: Unable to copy "%TMPHOSTS%" + "%TMPANCILE%" to "%HOSTSFILE%" >> "%LOGFILE%" 2>&1
	attrib +R "%HOSTSFILE%"
) ELSE (
	ECHO Skipping modification of hosts file >> "%LOGFILE%"
	ECHO ** Skipping hosts file
)

@REM Block hosts using the routing table
SET rkey=Hkey_Local_machine\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\PersistentRoutes
IF NOT "%MODROUTES%"=="N" (
	ECHO Modifying routing table: >> "%LOGFILE%"
	ECHO ** Updating routing table
	IF NOT "%DEBUG%"=="N" route PRINT >> "%LOGFILE%" 2>&1
	FOR /F "tokens=1,2,* delims=, " %%i IN ('TYPE "%IPLIST%"') DO (
		IF NOT "%DEBUG%"=="N" (
			ECHO Route: "%%i" : "%%j" : "%ROUTESREDIRECT%" >> "%LOGFILE%" 2>&1
			route ADD %%i MASK %%j %ROUTESREDIRECT% -p >> "%LOGFILE%" 2>&1
		) ELSE (
			route ADD %%i MASK %%j %ROUTESREDIRECT% -p >> nul 2>&1
		)
	)
) ELSE (
	ECHO Skipping modification of routing table: >> "%LOGFILE%"
	ECHO ** Skipping routing table
)

@REM Block hosts using the Windows firewall.
ECHO Modifying firewall rules: >> "%LOGFILE%"
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
	IF NOT "%DEBUG%"=="N" ECHO !ipaddrlist! >> "%LOGFILE%"
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