@REM disablegwx - Disable Get windows 10 nagging process

  ECHO * disable gwx ... %log%
  tasklist 2>&1 | findstr /i gwx.exe >nul 2>&1 && taskkill /f /im gwx.exe /t %logs%
  tasklist 2>&1 | findstr /i gwxux.exe >nul 2>&1 && taskkill /f /im gwxux.exe /t %logs%
  SET key=hkey_local_machine\software\policies\microsoft\windows\gwx
  reg add "%key%" /f /t reg_dword /v disablegwx /d 1 %logs%
  ECHO. %log%