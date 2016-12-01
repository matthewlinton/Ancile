@REM disable_Services - Disable Windows services

SET PLUGINNAME=disable_Services
SET PLUGINVERSION=1.0
SET PLUGINDIR=%SCRIPTDIR%\%PLUGINNAME%

SET SERVICELISTS=%DATADIR%\%PLUGINNAME%\*.lst

ECHO [%DATE% %TIME%] BEGIN DISABLE SERVICES >> "%LOGFILE%"
ECHO * Disabling Services ... 

IF "%DISABLESERVICES%"=="N" (
	ECHO Skipping Disable Services >> "%LOGFILE%"
	ECHO   Skipping Disable Services
) ELSE (
	FOR /F "eol=# tokens=1,*" %%i IN ('TYPE "%SERVICELISTS%" 2^>^> "%LOGFILE%"') DO (
		ECHO   %%i
		
		@REM Stop Service
		sc query %%i 2>&1 | findstr /i running >nul 2>&1 && net stop %%i >> "%LOGFILE%" 2>&1
		
		@REM Delete or disable service
		IF "%%j"=="DELETE" (
			@REM Delete Service
			IF "%DEBUG%"=="Y" ECHO Deleting "%%i" Service >> "%LOGFILE%"
		) ELSE (
			@REM Disable Service
			IF "%DEBUG%"=="Y" ECHO Disabling "%%i" Service >> "%LOGFILE%"
			sc query %%i >nul 2>&1 && sc config %%i start= disabled >> "%LOGFILE%" 2>&1
		)
	)
)

ECHO [%DATE% %TIME%] END DISABLE SERVICES >> "%LOGFILE%"
ECHO   DONE