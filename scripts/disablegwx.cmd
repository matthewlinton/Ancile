@REM disablegwx - Disable Get windows 10 nagging process

ECHO [%DATE% %TIME%] BEGIN DISABLE GWX >> "%LOGFILE%"
ECHO * Disabling GWX ... 

@REM Kill GWX tasks
tasklist 2>&1 | findstr /i gwx.exe >nul 2>&1 && taskkill /f /im gwx.exe /t 2>&1 >> "%LOGFILE%"
tasklist 2>&1 | findstr /i gwxux.exe >nul 2>&1 && taskkill /f /im gwxux.exe /t 2>&1 >> "%LOGFILE%"

@REM Disable GWX
SET rkey=hkey_local_machine\software\policies\microsoft\windows\gwx
reg ADD "%rkey%" /f /t reg_dword /v disablegwx /d 1 2>&1 >> "%LOGFILE%"

ECHO [%DATE% %TIME%] END DISABLE GWX >> "%LOGFILE%"
ECHO   DONE