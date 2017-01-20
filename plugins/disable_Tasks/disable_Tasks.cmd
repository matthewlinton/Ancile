@REM disable_Tasks - Disable unwanted Windows tasks

SETLOCAL

@REM COnfiguration
SET PLUGINNAME=disable_Tasks
SET PLUGINVERSION=1.1
SET PLUGINDIR=%SCRIPTDIR%\%PLUGINNAME%

SET TASKLISTS=%DATADIR%\%PLUGINNAME%\*.lst

@REM Dependencies
IF NOT "%APPNAME%"=="Ancile" (
	ECHO ERROR: %PLUGINNAME% is meant to be launched by Ancile, and will not run as a stand alone script.
	ECHO Press any key to exit ...
	PAUSE >nul 2>&1
	EXIT
)

@REM Header
ECHO [%DATE% %TIME%] BEGIN DISABLE TASKS >> "%LOGFILE%"
ECHO * Disabling Tasks ... 

@REM Main
IF "%DISABLETASKS%"=="N" (
	ECHO User skipping disabletasks >> "%LOGFILE%"
	ECHO   Skipping Disable Tasks
) ELSE (
	ECHO   Processing Tasks
	FOR /F "eol=# tokens=*" %%t IN ('TYPE "%TASKLISTS%" 2^>^> "%LOGFILE%"') DO (
		IF "%DEBUG%"=="Y" ECHO Checking: "%%t" >> "%LOGFILE%" 2>&1
		schtasks /query /tn "%%t" >nul 2>&1 && schtasks /change /disable /tn "%%t" >> "%LOGFILE%" 2>&1
	)
)

@REM Footer
ECHO [%DATE% %TIME%] END DISABLE TASKS >> "%LOGFILE%"
ECHO   DONE

ENDLOCAL
