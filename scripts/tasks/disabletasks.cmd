@REM disabletasks - Disable unwanted Windows tasks

SET TASKLIST=%SCRIPTDIR%\tasks\tasks.txt

ECHO [%DATE% %TIME%] BEGIN DISABLE TASKS >> "%LOGFILE%"
ECHO * Disabling Tasks ... 

FOR /F %%t IN ('TYPE "%TASKLIST%"') DO (
	ECHO Checking: %%t >> "%LOGFILE%" 2>&1
	schtasks /query /tn "%%t" >nul 2>&1 && schtasks /change /disable /tn "%%t" >> "%LOGFILE%" 2>&1
)

ECHO [%DATE% %TIME%] END DISABLE TASKS >> "%LOGFILE%"
ECHO   DONE