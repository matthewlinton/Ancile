@REM disableceip - Disable Microsoft's Customer Experience Improvement Program

ECHO [%DATE% %TIME%] BEGIN DISABLE CEIP >> "%LOGFILE%"
ECHO * Disabling Microsoft CEIP ... 

SET rkey=hkey_local_machine\software\microsoft\sqmclient\windows
reg ADD "%rkey%" /f /t reg_dword /v ceipenable /d 0 2>&1 >> "%LOGFILE%"

ECHO [%DATE% %TIME%] END DISABLE CEIP >> "%LOGFILE%"
ECHO   DONE