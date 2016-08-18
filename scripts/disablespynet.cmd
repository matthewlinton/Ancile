@REM disablespynet - Disable Microsoft's Windows Defender SpyNet reporting

  ECHO * disable spynet ... %log%
  SET key=hkey_local_machine\software\microsoft\windows defender\spynet
  reg add "%key%" /f /t reg_dword /v spynetreporting /d 0 %logs%
  reg add "%key%" /f /t reg_dword /v submitsamplesconsent /d 0 %logs%
  ECHO. %log%