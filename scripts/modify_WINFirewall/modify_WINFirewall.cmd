@REM modify_WINFirewall - Create rules for the windows firewall to block hosts.

Setlocal EnableDelayedExpansion

SET PLUGINNAME=modify_WINFirewall
SET PLUGINVERSION=1.0
SET PLUGINDIR=%SCRIPTDIR%\%PLUGINNAME%

SET IPLISTS=%DATADIR%\%PLUGINNAME%\*.lst

SET RULENAME=%APPNAME% - Block Malicious IP Addresses

ECHO [%DATE% %TIME%] BEGIN FIREWALL MODIFICATION >> "%LOGFILE%"
ECHO * Modifying Windows Firewall ...

IF "%MODIFYWINFIREWALL%"=="N" (
	ECHO Skipping modification of Windows firewall >> "%LOGFILE%"
	ECHO   Skipping Windows firewall modification
) ELSE (
	@REM Block hosts using the Windows firewall
	ECHO Generating firewall ruleset >> "%LOGFILE%"
	ECHO   Generating firewall ruleset
	SET ipaddrlist=
	FOR /F "eol=# tokens=1,* delims=, " %%i IN ('TYPE "%IPLISTS%" 2^>^> "%LOGFILE%"') DO (
	IF ".!ipaddrlist!"=="." (
			SET ipaddrlist=%%i
		) ELSE (
			SET ipaddrlist=!ipaddrlist!,%%i
		)
	)
	
	IF "%DEBUG%"=="Y" ECHO !ipaddrlist! >> "%LOGFILE%"
	
	@REM Delete old Firewall ruleset
	ECHO Deleting old firewall ruleset >> "%LOGFILE%"
	ECHO   Deleting old firewall ruleset >> "%LOGFILE%"
	netsh advfirewall firewall delete rule name="%RULENAME%" >> "%LOGFILE%" 2>&1
	
	@REM Add new Firewall ruleset
	ECHO Adding new firewall ruleset >> "%LOGFILE%"
	ECHO   Adding updated firewall ruleset >> "%LOGFILE%"
	netsh advfirewall firewall add rule name="%RULENAME%" dir=out action=block remoteip=!ipaddrlist! >> "%LOGFILE%" 2>&1
)

ECHO [%DATE% %TIME%] END FIREWALL MODIFICATION >> "%LOGFILE%"
ECHO   DONE

Setlocal DisableDelayedExpansion