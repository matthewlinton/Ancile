@REM disablewifisense - Disable Microsoft's WiFi Sense sharing

ECHO [%DATE% %TIME%] BEGIN DISABLE WIFI SENSE >> "%LOGFILE%"
ECHO * Disabling Microsoft WiFi Sense ... 

SET rkey=hkey_local_machine\software\microsoft\wcmsvc\wifinetworkmanager
reg ADD "%rkey%" /f /t reg_dword /v wifisensecredshared /d 0 2>&1 >> "%LOGFILE%"
reg ADD "%rkey%" /f /t reg_dword /v wifisenseopen /d 0 2>&1 >> "%LOGFILE%"

ECHO [%DATE% %TIME%] END DISABLE WIFI SENSE >> "%LOGFILE%"
ECHO   DONE