@REM Disable Microsoft WiFi Sense

SETLOCAL

@REM COnfiguration
SET PLUGINNAME=disable_MSWiFiSense
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
ECHO [%DATE% %TIME%] BEGIN DISABLE MICROSOFT WIFI SENSE PLUGIN >> "%LOGFILE%"
ECHO * Disable Microsoft Wi-Fi Sense ...

SETLOCAL EnableDelayedExpansion

@REM Main
IF "%DISABLEMSWIFISENSE%"=="N" (
	ECHO Skipping Disable Microsoft WiFi Sense >> "%LOGFILE%"
	ECHO   Skipping Disable MS WiFi Sense
) ELSE (
	ECHO   Modifying Registry
	SET rkey=HKEY_LOCAL_MACHINE\SOFTWARE\microsoft\wcmsvc\wifinetworkmanager
	reg ADD "!rkey!" /f /t reg_dword /v wifisensecredshared /d 0 >> "%LOGFILE%" 2>&1
	reg ADD "!rkey!" /f /t reg_dword /v wifisenseopen /d 0 >> "%LOGFILE%" 2>&1
)

SETLOCAL DisableDelayedExpansion

@REM Footer
ECHO [%DATE% %TIME%] END DISABLE MICROSOFT WIFI SENSE PLUGIN >> "%LOGFILE%"
ECHO   DONE

ENDLOCAL