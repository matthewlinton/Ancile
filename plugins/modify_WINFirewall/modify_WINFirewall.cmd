@REM modify_WINFirewall - Create rules for the windows firewall to block hosts.

Setlocal EnableDelayedExpansion

@REM Configuration
SET PLUGINNAME=modify_WINFirewall
SET PLUGINVERSION=1.2
SET PLUGINDIR=%SCRIPTDIR%\%PLUGINNAME%

SET IPLISTS=%DATADIR%\%PLUGINNAME%\*.lst

SET RULENAME=%APPNAME% - Block Malicious IP Addresses

@REM Dependencies
IF NOT "%APPNAME%"=="Ancile" (
	ECHO ERROR: %PLUGINNAME% is meant to be launched by Ancile, and will not run as a stand alone script.
	ECHO Press any key to exit ...
	PAUSE >nul 2>&1
	EXIT
)

@REM Check to see if Windows Firewall is running
SET _firewallrunning=N
sc query MpsSvc 2>&1 | findstr /I RUNNING >nul 2>&1 && SET _firewallrunning=Y
IF "%_firewallrunning%"=="N" SET MODIFYWINFIREWALL=N

@REM Header
ECHO [%DATE% %TIME%] BEGIN FIREWALL MODIFICATION >> "%LOGFILE%"
ECHO * Modifying Windows Firewall ...

@REM Main
IF "%MODIFYWINFIREWALL%"=="N" (
	IF "%_firewallrunning%"=="N" (
		ECHO Windows Firewall has been disabled >> "%LOGFILE%"
		ECHO   Windows Firewall has been disabled
	)
	
	ECHO Skipping modification of Windows firewall >> "%LOGFILE%"
	ECHO   Skipping Windows firewall modification
) ELSE (
	ECHO Generating firewall ruleset >> "%LOGFILE%"
	ECHO   Generating firewall ruleset
	SET ipaddrlist=
	
	@REM Loop through lists of IP addresses and add them to a string
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

@REM Footer
ECHO [%DATE% %TIME%] END FIREWALL MODIFICATION >> "%LOGFILE%"
ECHO   DONE

Setlocal DisableDelayedExpansion