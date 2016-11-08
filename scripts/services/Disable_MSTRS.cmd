@REM Disable Microsoft Telemetry Reporting Services
ECHO Disabling Telemetry Reporting Services: >> "%LOGFILE%"
ECHO ** Telemetry Reporting Services
SET rkey=HKEY_CURRENT_USER\SOFTWARE\policies\microsoft\office\15.0\osm
reg ADD "%rkey%" /f /t reg_dword /v enablelogging /d 0 >> "%LOGFILE%" 2>&1
reg ADD "%rkey%" /f /t reg_dword /v enablefileobfuscation /d 1 >> "%LOGFILE%" 2>&1
reg ADD "%rkey%" /f /t reg_dword /v enableupload /d 0 >> "%LOGFILE%" 2>&1
SET key=HKEY_CURRENT_USER\SOFTWARE\policies\microsoft\office\16.0\osm
reg ADD "%rkey%" /f /t reg_dword /v enablelogging /d 0 >> "%LOGFILE%" 2>&1
reg ADD "%rkey%" /f /t reg_dword /v enablefileobfuscation /d 1 >> "%LOGFILE%" 2>&1
reg ADD "%rkey%" /f /t reg_dword /v enableupload /d 0 >> "%LOGFILE%" 2>&1
SET key=HKEY_LOCAL_MACHINE\SOFTWARE\policies\microsoft\windows\datacollection
reg ADD "%rkey%" /f /t reg_dword /v allowtelemetry /d 0 >> "%LOGFILE%" 2>&1
SET key=HKEY_LOCAL_MACHINE\SOFTWARE\policies\microsoft\windows\scripteddiagnosticsprovider\policy
reg ADD "%rkey%" /f /t reg_dword /v enablequeryremoteserver /d 0 >> "%LOGFILE%" 2>&1