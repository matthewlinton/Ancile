@REM Disable Microsoft SkyDrive
ECHO Disabling Microsoft SkyDrive: >> "%LOGFILE%"
ECHO ** Skydrive
SET rkey=HKEY_LOCAL_MACHINE\SOFTWARE\policies\microsoft\windows\skydrive
reg ADD "%rkey%" /f /t reg_dword /v DisableFileSync /d 1 >> "%LOGFILE%" 2>&1
SET rkey=HKEY_CLASSES_ROOT\CLSID\{8E74D236-7F35-4720-B138-1FED0B85EA75}\ShellFolder
reg ADD "%rkey%" /f /t reg_dword /v Attributes /d 0 >> "%LOGFILE%" 2>&1