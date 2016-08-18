@REM disabletasks - disable windows tasks
  SET tn=\microsoft\windows\application experience\aitagent
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%