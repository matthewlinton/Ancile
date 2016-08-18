@REM winupdate - Disable unwanted Windows Update behavior.
ECHO * configure windows update ... %log%
SET key=hkey_local_machine\software\microsoft\windows\currentversion\windowsupdate\auto update
reg add "%key%" /f /t reg_dword /v auoptions /d 2 %logs%
reg add "%key%" /f /t reg_dword /v enablefeaturedsoftware /d 0 %logs%
reg add "%key%" /f /t reg_dword /v includerecommendedupdates /d 0 %logs%
ECHO. %log%