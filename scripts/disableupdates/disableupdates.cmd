@REM disableupdates - uninstall and hide unwanted Windows updates.

ECHO * uninstall ^& hide updates (this may take a while, be patient) ... %log%
  powershell -executionpolicy bypass -file "%~dp0uninstall.ps1" %log%
  powershell -executionpolicy bypass -file "%~dp0hide.ps1" %log%
  sc query wuauserv 2>&1 | findstr /i running >nul 2>&1 && net stop wuauserv %logs%
  sc query bits 2>&1 | findstr /i running >nul 2>&1 && net stop bits %logs%
  net start bits %logs%
  net start wuauserv %logs%
  ECHO.
  GOTO end