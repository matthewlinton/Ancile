@REM Disable Microsoft SkyDrive
ECHO Disabling Microsoft SkyDrive: >> "%LOGFILE%"
ECHO ** Skydrive
SET rkey=HKEY_LOCAL_MACHINE\SOFTWARE\policies\microsoft\windows\skydrive
reg ADD "%rkey%" /f /t reg_dword /v disablefilesync /d 1 >> "%LOGFILE%" 2>&1