@REM Disable Microsoft WiFi Sense
ECHO Disabling Microsoft WiFi Sense: >> "%LOGFILE%"
ECHO ** WiFi Sense
SET rkey=HKEY_LOCAL_MACHINE\SOFTWARE\microsoft\wcmsvc\wifinetworkmanager
reg ADD "%rkey%" /f /t reg_dword /v wifisensecredshared /d 0 >> "%LOGFILE%" 2>&1
reg ADD "%rkey%" /f /t reg_dword /v wifisenseopen /d 0 >> "%LOGFILE%" 2>&1