@REM disableskydrive - Disable Mocrosoft's sky drive service

ECHO [%DATE% %TIME%] BEGIN DISABLE SKYDRIVE >> "%LOGFILE%"
ECHO * Disabling SkyDrive ... 

SET rkey=hkey_local_machine\software\policies\microsoft\windows\skydrive
reg ADD "%rkey%" /f /t reg_dword /v disablefilesync /d 1 2>&1 >> "%LOGFILE%"

ECHO [%DATE% %TIME%] END DISABLE SKYDRIVE >> "%LOGFILE%"
ECHO   DONE