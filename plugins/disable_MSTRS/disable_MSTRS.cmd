@REM Disable Microsoft Telemetry Reporting Services

SET PLUGINNAME=disable_MSTRS
SET PLUGINVERSION=1.0
SET PLUGINDIR=%SCRIPTDIR%\%PLUGINNAME%

ECHO [%DATE% %TIME%] BEGIN DISABLE MICROSOFT TELEMETRY REPORTING SERVICE PLUGIN >> "%LOGFILE%"
ECHO * Disable MS Telemetry reporting service ...

IF "%DISABLEMSTRS%"=="N" (
	@REM Script Disabled.
	@REM If the user has disabled this plugin, log that and move on
	ECHO Skipping Disable MS Telemetry reporting service >> "%LOGFILE%"
	ECHO   Skipping Disable MSTRS
) ELSE (
	@REM Modify the Windows System registry entries
	ECHO Modifying Windows Service >> "%LOGFILE%"
	ECHO   Modifying Windows Service
	
	SET key=HKEY_LOCAL_MACHINE\SOFTWARE\policies\microsoft\windows\datacollection
	reg ADD "%rkey%" /f /t reg_dword /v allowtelemetry /d 0 >> "%LOGFILE%" 2>&1

	SET key=HKEY_LOCAL_MACHINE\SOFTWARE\policies\microsoft\windows\scripteddiagnosticsprovider\policy
	reg ADD "%rkey%" /f /t reg_dword /v enablequeryremoteserver /d 0 >> "%LOGFILE%" 2>&1
	
	@REM Modify MS Office 2010 registry entries
	ECHO Modifying MS Office 2013 >> "%LOGFILE%"
	ECHO   Modifying MS Office 2013
	
	SET rkey=HKEY_CURRENT_USER\SOFTWARE\policies\microsoft\office\15.0\osm
	reg ADD "%rkey%" /f /t reg_dword /v enablelogging /d 0 >> "%LOGFILE%" 2>&1
	reg ADD "%rkey%" /f /t reg_dword /v enablefileobfuscation /d 1 >> "%LOGFILE%" 2>&1
	reg ADD "%rkey%" /f /t reg_dword /v enableupload /d 0 >> "%LOGFILE%" 2>&1

	@REM Modify MS Office registry entries
	ECHO Modifying MS Office 2016 >> "%LOGFILE%"
	ECHO   Modifying MS Office 2016
	
	SET key=HKEY_CURRENT_USER\SOFTWARE\policies\microsoft\office\16.0\osm
	reg ADD "%rkey%" /f /t reg_dword /v enablelogging /d 0 >> "%LOGFILE%" 2>&1
	reg ADD "%rkey%" /f /t reg_dword /v enablefileobfuscation /d 1 >> "%LOGFILE%" 2>&1
	reg ADD "%rkey%" /f /t reg_dword /v enableupload /d 0 >> "%LOGFILE%" 2>&1
)

ECHO [%DATE% %TIME%] END DISABLE MICROSOFT TELEMETRY REPORTING SERVICE PLUGIN >> "%LOGFILE%"
ECHO   DONE
