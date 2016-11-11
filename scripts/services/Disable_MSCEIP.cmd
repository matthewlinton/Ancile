@REM Disable Microsoft Customer Experience Improvement Program

ECHO Disabling Microsoft Customer Experience Improvement Program: >> "%LOGFILE%"
ECHO ** Customer Experience Improvement Program

@REM Windows
SET rkey=HKEY_LOCAL_MACHINE\SOFTWARE\microsoft\sqmclient\windows
reg ADD "%rkey%" /f /t reg_dword /v ceipenable /d 0 >> "%LOGFILE%" 2>&1

@REM Microsoft Messenger
SET rkey=HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Messenger\Client
reg ADD "%rkey%" /f /t reg_dword /v CEIP /d 0 >> "%LOGFILE%" 2>&1