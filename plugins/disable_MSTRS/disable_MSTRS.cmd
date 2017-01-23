@REM Disable Microsoft Telemetry Reporting Services

SETLOCAL

@REM Configuration
SET PLUGINNAME=disable_MSTRS
SET PLUGINVERSION=1.1
SET PLUGINDIR=%SCRIPTDIR%\%PLUGINNAME%

@REM Dependencies
IF NOT "%APPNAME%"=="Ancile" (
	ECHO ERROR: %PLUGINNAME% is meant to be launched by Ancile, and will not run as a stand alone script.
	ECHO Press any key to exit ...
	PAUSE >nul 2>&1
	EXIT
)

@REM Header
ECHO [%DATE% %TIME%] BEGIN DISABLE MICROSOFT TELEMETRY REPORTING SERVICE PLUGIN >> "%LOGFILE%"
ECHO * Disable MS Telemetry reporting service ...

SETLOCAL EnableDelayedExpansion

@REM Begin
IF "%DISABLEMSTRS%"=="N" (
	@REM Script Disabled.
	@REM If the user has disabled this plugin, log that and move on
	ECHO Skipping Disable MS Telemetry reporting service >> "%LOGFILE%"
	ECHO   Skipping Disable MSTRS
) ELSE (
	@REM Modify the Windows System registry entries
	ECHO Modifying Windows Service >> "%LOGFILE%"
	ECHO   Modifying Windows Service
	
	SET rkey=HKEY_LOCAL_MACHINE\SOFTWARE\policies\microsoft\windows\datacollection
	reg ADD "!rkey!" /f /t reg_dword /v allowtelemetry /d 0 >> "%LOGFILE%" 2>&1

	SET rkey=HKEY_LOCAL_MACHINE\SOFTWARE\policies\microsoft\windows\scripteddiagnosticsprovider\policy
	reg ADD "!rkey!" /f /t reg_dword /v enablequeryremoteserver /d 0 >> "%LOGFILE%" 2>&1
	
	@REM Modify MS Office 2010 registry entries
	ECHO Modifying MS Office 2013 >> "%LOGFILE%"
	ECHO   Modifying MS Office 2013
	
	SET rkey=HKEY_CURRENT_USER\SOFTWARE\policies\microsoft\office\15.0\osm
	reg ADD "!rkey!" /f /t reg_dword /v enablelogging /d 0 >> "%LOGFILE%" 2>&1
	reg ADD "!rkey!" /f /t reg_dword /v enablefileobfuscation /d 1 >> "%LOGFILE%" 2>&1
	reg ADD "!rkey!" /f /t reg_dword /v enableupload /d 0 >> "%LOGFILE%" 2>&1

	@REM Modify MS Office registry entries
	ECHO Modifying MS Office 2016 >> "%LOGFILE%"
	ECHO   Modifying MS Office 2016
	
	SET key=HKEY_CURRENT_USER\SOFTWARE\policies\microsoft\office\16.0\osm
	reg ADD "!rkey!" /f /t reg_dword /v enablelogging /d 0 >> "%LOGFILE%" 2>&1
	reg ADD "!rkey!" /f /t reg_dword /v enablefileobfuscation /d 1 >> "%LOGFILE%" 2>&1
	reg ADD "!rkey!" /f /t reg_dword /v enableupload /d 0 >> "%LOGFILE%" 2>&1
)

SETLOCAL DisableDelayedExpansion

@REM Footer
ECHO [%DATE% %TIME%] END DISABLE MICROSOFT TELEMETRY REPORTING SERVICE PLUGIN >> "%LOGFILE%"
ECHO   DONE

ENDLOCAL
