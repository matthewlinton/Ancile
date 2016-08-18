@REM disabletelemetry - Disable Microsoft's telemetry reporting services

  ECHO * disable telemetry ... %log%
  SET key=hkey_current_user\software\policies\microsoft\office\15.0\osm
  reg add "%key%" /f /t reg_dword /v enablelogging /d 0 %logs%
  reg add "%key%" /f /t reg_dword /v enablefileobfuscation /d 1 %logs%
  reg add "%key%" /f /t reg_dword /v enableupload /d 0 %logs%
  SET key=hkey_current_user\software\policies\microsoft\office\16.0\osm
  reg add "%key%" /f /t reg_dword /v enablelogging /d 0 %logs%
  reg add "%key%" /f /t reg_dword /v enablefileobfuscation /d 1 %logs%
  reg add "%key%" /f /t reg_dword /v enableupload /d 0 %logs%
  SET key=hkey_local_machine\software\policies\microsoft\windows\datacollection
  reg add "%key%" /f /t reg_dword /v allowtelemetry /d 0 %logs%
  SET key=hkey_local_machine\software\policies\microsoft\windows\scripteddiagnosticsprovider\policy
  reg add "%key%" /f /t reg_dword /v enablequeryremoteserver /d 0 %logs%
  ECHO. %log%