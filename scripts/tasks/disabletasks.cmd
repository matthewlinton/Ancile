@REM disabletasks - Disable unwanted Windows tasks

SET TASKLIST=%SCRIPTDIR%\tasks\tasks.txt

ECHO [%DATE% %TIME%] BEGIN DISABLE TASKS >> "%LOGFILE%"
ECHO * Disabling Tasks ... 

FOR /F %%T in ('TYPE "%TASKLIST%"') DO (
	schtasks /query /tn "%%T" >nul 2>&1 && schtasks /change /disable /tn "%%T" 2>&1 >> "%LOGFILE%"
)

ECHO [%DATE% %TIME%] END DISABLE TASKS >> "%LOGFILE%"
ECHO   DONE