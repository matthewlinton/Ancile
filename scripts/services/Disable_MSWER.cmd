@REM Disable Microsoft Windows Error Reporting

ECHO Disabling Microsoft Windows Error Reporting: >> "%LOGFILE%"
ECHO ** Error Reporting

SET rkey=HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\PCHealth\ErrorReporting
reg ADD "%rkey%" /f /t reg_dword /v DoReport /d 0 >> "%LOGFILE%" 2>&1

SET rkey=HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Windows Error Reporting
reg ADD "%rkey%" /f /t reg_dword /v Disabled /d 1 >> "%LOGFILE%" 2>&1