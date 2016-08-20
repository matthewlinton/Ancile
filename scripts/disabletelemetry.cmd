@REM disabletelemetry - Disable Microsoft's telemetry reporting services

ECHO [%DATE% %TIME%] BEGIN DISABLE TELEMETRY >> "%LOGFILE%"
ECHO * Disabling Microsoft Telemetry Reporting ... 

SET rkey=hkey_current_user\software\policies\microsoft\office\15.0\osm
reg ADD "%rkey%" /f /t reg_dword /v enablelogging /d 0 2>&1 >> "%LOGFILE%"
reg ADD "%rkey%" /f /t reg_dword /v enablefileobfuscation /d 1 2>&1 >> "%LOGFILE%"
reg ADD "%rkey%" /f /t reg_dword /v enableupload /d 0 2>&1 >> "%LOGFILE%"

SET key=hkey_current_user\software\policies\microsoft\office\16.0\osm
reg ADD "%rkey%" /f /t reg_dword /v enablelogging /d 0 2>&1 >> "%LOGFILE%"
reg ADD "%rkey%" /f /t reg_dword /v enablefileobfuscation /d 1 2>&1 >> "%LOGFILE%"
reg ADD "%rkey%" /f /t reg_dword /v enableupload /d 0 2>&1 >> "%LOGFILE%"

SET key=hkey_local_machine\software\policies\microsoft\windows\datacollection
reg ADD "%rkey%" /f /t reg_dword /v allowtelemetry /d 0 2>&1 >> "%LOGFILE%"

SET key=hkey_local_machine\software\policies\microsoft\windows\scripteddiagnosticsprovider\policy
reg ADD "%rkey%" /f /t reg_dword /v enablequeryremoteserver /d 0 2>&1 >> "%LOGFILE%"

ECHO [%DATE% %TIME%] END DISABLE TELEMETRY >> "%LOGFILE%"
ECHO   DONE