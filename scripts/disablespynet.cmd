@REM disablespynet - Disable Microsoft's Windows Defender SpyNet reporting

ECHO [%DATE% %TIME%] BEGIN DISABLE SPYNET >> "%LOGFILE%"
ECHO * Disabling Microsoft SpyNet Reporting ... 

SET rkey=hkey_local_machine\software\microsoft\windows defender\spynet
reg ADD "%rkey%" /f /t reg_dword /v spynetreporting /d 0 2>&1 >> "%LOGFILE%"
reg ADD "%rkey%" /f /t reg_dword /v submitsamplesconsent /d 0 2>&1 >> "%LOGFILE%"

ECHO [%DATE% %TIME%] END DISABLE SPYNET >> "%LOGFILE%"
ECHO   DONE