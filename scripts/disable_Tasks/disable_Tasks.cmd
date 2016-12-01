@REM disable_Tasks - Disable unwanted Windows tasks

SET PLUGINNAME=disable_Tasks
SET PLUGINVERSION=1.0
SET PLUGINDIR=%SCRIPTDIR%\%PLUGINNAME%

SET TASKLISTS=%DATADIR%\%PLUGINNAME%\*.lst

ECHO [%DATE% %TIME%] BEGIN DISABLE TASKS >> "%LOGFILE%"
ECHO * Disabling Tasks ... 

IF "%DISABLETASKS%"=="N" (
	ECHO User skipping disabletasks >> "%LOGFILE%"
	ECHO   Skipping Disable Tasks
) ELSE (
	FOR /F "eol=# tokens=*" %%t IN ('TYPE "%TASKLISTS%" 2^>^> "%LOGFILE%"') DO (
		IF "%DEBUG%"=="Y" ECHO Checking: "%%t" >> "%LOGFILE%" 2>&1
		ECHO   %%t
		schtasks /query /tn "%%t" >nul 2>&1 && schtasks /change /disable /tn "%%t" >> "%LOGFILE%" 2>&1
	)
)

ECHO [%DATE% %TIME%] END DISABLE TASKS >> "%LOGFILE%"
ECHO   DONE