@REM disableremreg - Disable remote registry service
ECHO * disable remote registry ... %log%
sc query remoteregistry 2>&1 | findstr /i running >nul 2>&1 && net stop remoteregistry %logs%
sc query remoteregistry >nul 2>&1 && sc config remoteregistry start= disabled %logs%
ECHO. %log%
