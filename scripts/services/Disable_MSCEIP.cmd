@REM Disable Microsoft Customer Experience Improvement Program
ECHO Disabling Microsoft Customer Experience Improvement Program: >> "%LOGFILE%"
ECHO ** Customer Experience Improvement Program
SET rkey=HKEY_LOCAL_MACHINE\SOFTWARE\microsoft\sqmclient\windows
reg ADD "%rkey%" /f /t reg_dword /v ceipenable /d 0 >> "%LOGFILE%" 2>&1