@REM disableremreg - Disable remote registry service

ECHO [%DATE% %TIME%] BEGIN DISABLE REMOTE REGISTRY >> "%LOGFILE%"
IF NOT "%DISABLEREMREG%"=="N" (
	ECHO * Disabling Remote Registry ... 
	sc query remoteregistry 2>&1 | findstr /i running >nul 2>&1 && net stop remoteregistry 2>&1 >> "%LOGFILE%"
	sc query remoteregistry >nul 2>&1 && sc config remoteregistry start= disabled 2>&1 >> "%LOGFILE%"
) ELSE (
	ECHO SKIPPED:  DISABLEREMREG = "%DISABLEREMREG%">> "%LOGFILE%"
	ECHO * Skipping Disable Remote Registry
)
ECHO [%DATE% %TIME%] END DISABLE REMOTE REGISTRY >> "%LOGFILE%"
ECHO   DONE