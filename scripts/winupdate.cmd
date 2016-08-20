@REM winupdate - Disable unwanted Windows Update behavior.

ECHO [%DATE% %TIME%] BEGIN DISABLE WINDOWS UPDATE >> "%LOGFILE%"
ECHO * configure windows update ...

SET rkey=hkey_local_machine\software\microsoft\windows\currentversion\windowsupdate\auto update
reg ADD "%rkey%" /f /t reg_dword /v auoptions /d 2  >> "%LOGFILE%"
reg ADD "%rkey%" /f /t reg_dword /v enablefeaturedsoftware /d 0  >> "%LOGFILE%"
reg ADD "%rkey%" /f /t reg_dword /v includerecommendedupdates /d 0  >> "%LOGFILE%"

ECHO [%DATE% %TIME%] END DISABLE WINDOWS UPDATE >> "%LOGFILE%"
ECHO   DONE