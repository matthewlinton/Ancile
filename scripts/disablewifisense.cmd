@REM disablewifisense - Disable Microsoft's WiFi Sense sharing

  ECHO * disable wifisense ... %log%
  SET key=hkey_local_machine\software\microsoft\wcmsvc\wifinetworkmanager
  reg add "%key%" /f /t reg_dword /v wifisensecredshared /d 0 %logs%
  reg add "%key%" /f /t reg_dword /v wifisenseopen /d 0 %logs%
  ECHO. %log%