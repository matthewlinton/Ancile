@REM disablediagtrak - Disable Windows diagnostics tracking

ECHO [%DATE% %TIME%] BEGIN DISABLE DIAGNOSTIC TRACKING >> "%LOGFILE%"
ECHO * Disabling Microsoft Diagnostics Tracking ... 

sc query diagtrack 2>&1 | findstr /i running >nul 2>&1 && net stop diagtrack 2>&1 >> "%LOGFILE%"
sc query diagtrack >nul 2>&1 && sc delete diagtrack 2>&1 >> "%LOGFILE%"

ECHO [%DATE% %TIME%] END DISABLE DIAGNOSTIC TRACKING >> "%LOGFILE%"
ECHO   DONE