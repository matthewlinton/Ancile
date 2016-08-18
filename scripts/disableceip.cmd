@REM disableceip - Disable Microsoft's Customer Experience Improvement Program

  ECHO * disable ceip ... %log%
  SET key=hkey_local_machine\software\microsoft\sqmclient\windows
  reg add "%key%" /f /t reg_dword /v ceipenable /d 0 %logs%
  ECHO. %log%