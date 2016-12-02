@REM Disable Microsoft WiFi Sense

SET PLUGINNAME=disable_MSWiFiSense
SET PLUGINVERSION=1.0
SET PLUGINDIR=%SCRIPTDIR%\%PLUGINNAME%

ECHO [%DATE% %TIME%] BEGIN DISABLE MICROSOFT WIFI SENSE PLUGIN >> "%LOGFILE%"
ECHO * Disable Microsoft Wi-Fi Sense ...

IF "%DISABLEMSWIFISENSE%"=="N" (
	ECHO Skipping Disable Microsoft WiFi Sense >> "%LOGFILE%"
	ECHO   Skipping Disable MS WiFi Sense
) ELSE (
	ECHO   Modifying Registry
	SET rkey=HKEY_LOCAL_MACHINE\SOFTWARE\microsoft\wcmsvc\wifinetworkmanager
	reg ADD "%rkey%" /f /t reg_dword /v wifisensecredshared /d 0 >> "%LOGFILE%" 2>&1
	reg ADD "%rkey%" /f /t reg_dword /v wifisenseopen /d 0 >> "%LOGFILE%" 2>&1
)

ECHO [%DATE% %TIME%] END DISABLE MICROSOFT WIFI SENSE PLUGIN >> "%LOGFILE%"
ECHO   DONE