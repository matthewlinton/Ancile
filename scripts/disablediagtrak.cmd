@REM disablediagtrak - Disable Windows diagnostics tracking

  ECHO * remove diagtrack ... %log%
  sc query diagtrack 2>&1 | findstr /i running >nul 2>&1 && net stop diagtrack %logs%
  sc query diagtrack >nul 2>&1 && sc delete diagtrack %logs%
  ECHO. %log%