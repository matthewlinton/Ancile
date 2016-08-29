@REM disableservices - Disable various unwanted services.

ECHO [%DATE% %TIME%] BEGIN DISABLE SERVICES >> "%LOGFILE%"
ECHO * Disabling Services ... 

@REM Disable Microsoft Customer Experience Improvement Program
ECHO Disabling Microsoft Customer Experience Improvement Program: >> "%LOGFILE%"
ECHO ** Customer Experience Improvement Program
SET rkey=hkey_local_machine\software\microsoft\sqmclient\windows
reg ADD "%rkey%" /f /t reg_dword /v ceipenable /d 0 >> "%LOGFILE%" 2>&1

@REM Disable Microsoft Telemetry Reporting Services
ECHO Disabling Telemetry Reporting Services: >> "%LOGFILE%"
ECHO ** Telemetry Reporting Services
SET rkey=hkey_current_user\software\policies\microsoft\office\15.0\osm
reg ADD "%rkey%" /f /t reg_dword /v enablelogging /d 0 >> "%LOGFILE%" 2>&1
reg ADD "%rkey%" /f /t reg_dword /v enablefileobfuscation /d 1 >> "%LOGFILE%" 2>&1
reg ADD "%rkey%" /f /t reg_dword /v enableupload /d 0 >> "%LOGFILE%" 2>&1
SET key=hkey_current_user\software\policies\microsoft\office\16.0\osm
reg ADD "%rkey%" /f /t reg_dword /v enablelogging /d 0 >> "%LOGFILE%" 2>&1
reg ADD "%rkey%" /f /t reg_dword /v enablefileobfuscation /d 1 >> "%LOGFILE%" 2>&1
reg ADD "%rkey%" /f /t reg_dword /v enableupload /d 0 >> "%LOGFILE%" 2>&1
SET key=hkey_local_machine\software\policies\microsoft\windows\datacollection
reg ADD "%rkey%" /f /t reg_dword /v allowtelemetry /d 0 >> "%LOGFILE%" 2>&1
SET key=hkey_local_machine\software\policies\microsoft\windows\scripteddiagnosticsprovider\policy
reg ADD "%rkey%" /f /t reg_dword /v enablequeryremoteserver /d 0 >> "%LOGFILE%" 2>&1

@REM Disable Microsoft Diagnostics Tracking
ECHO Disabling Microsoft Diagnostics Tracking: >> "%LOGFILE%"
ECHO ** Diagnostics Tracking
sc query diagtrack 2>&1 | findstr /i running >nul 2>&1 && net stop diagtrack >> "%LOGFILE%" 2>&1
sc query diagtrack >nul 2>&1 && sc delete diagtrack >> "%LOGFILE%" 2>&1

@REM Disable Microsoft WiFi Sense
ECHO Disabling Microsoft WiFi Sense: >> "%LOGFILE%"
ECHO ** WiFi Sense
SET rkey=hkey_local_machine\software\microsoft\wcmsvc\wifinetworkmanager
reg ADD "%rkey%" /f /t reg_dword /v wifisensecredshared /d 0 >> "%LOGFILE%" 2>&1
reg ADD "%rkey%" /f /t reg_dword /v wifisenseopen /d 0 >> "%LOGFILE%" 2>&1

@REM Disable Microsoft Spynet
ECHO Disabling Microsoft Spynet: >> "%LOGFILE%"
ECHO ** Spynet
SET rkey=hkey_local_machine\software\microsoft\windows defender\spynet
reg ADD "%rkey%" /f /t reg_dword /v spynetreporting /d 0 >> "%LOGFILE%" 2>&1
reg ADD "%rkey%" /f /t reg_dword /v submitsamplesconsent /d 0 >> "%LOGFILE%" 2>&1

@REM Disable Microsoft SkyDrive
ECHO Disabling Microsoft SkyDrive: >> "%LOGFILE%"
ECHO ** Skydrive
SET rkey=hkey_local_machine\software\policies\microsoft\windows\skydrive
reg ADD "%rkey%" /f /t reg_dword /v disablefilesync /d 1 >> "%LOGFILE%" 2>&1

ECHO [%DATE% %TIME%] END DISABLE SERVICES >> "%LOGFILE%"
ECHO   DONE