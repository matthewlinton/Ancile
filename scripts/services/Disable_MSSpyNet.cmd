@REM Disable Microsoft Spynet
ECHO Disabling Microsoft Spynet: >> "%LOGFILE%"
ECHO ** Spynet
SET rkey=HKEY_LOCAL_MACHINE\SOFTWARE\microsoft\windows defender\spynet
reg ADD "%rkey%" /f /t reg_dword /v spynetreporting /d 0 >> "%LOGFILE%" 2>&1
reg ADD "%rkey%" /f /t reg_dword /v submitsamplesconsent /d 0 >> "%LOGFILE%" 2>&1