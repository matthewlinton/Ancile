@REM disableskydrive - Disable Mocrosoft's sky drive service
  ECHO * disable skydrive ... %log%
  SET key=hkey_local_machine\software\policies\microsoft\windows\skydrive
  reg add "%key%" /f /t reg_dword /v disablefilesync /d 1 %logs%
  ECHO. %log%