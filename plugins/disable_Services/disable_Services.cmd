@REM disable_Services - Disable Windows services

@REM COnfiguration
SET PLUGINNAME=disable_Services
SET PLUGINVERSION=1.1
SET PLUGINDIR=%SCRIPTDIR%\%PLUGINNAME%

SET SERVICELISTS=%DATADIR%\%PLUGINNAME%\*.lst

@REM Dependencies
IF NOT "%APPNAME%"=="Ancile" (
	ECHO ERROR: %PLUGINNAME% is meant to be launched by Ancile, and will not run as a stand alone script.
	ECHO Press any key to exit ...
	PAUSE >nul 2>&1
	EXIT
)

@REM Header
ECHO [%DATE% %TIME%] BEGIN DISABLE SERVICES >> "%LOGFILE%"
ECHO * Disabling Services ... 

@REM Main
IF "%DISABLESERVICES%"=="N" (
	ECHO Skipping Disable Services >> "%LOGFILE%"
	ECHO   Skipping Disable Services
) ELSE (
	ECHO   Processing Services
	FOR /F "eol=# tokens=1,*" %%i IN ('TYPE "%SERVICELISTS%" 2^>^> "%LOGFILE%"') DO (
		@REM Stop Service
		sc query %%i 2>&1 | findstr /i running >nul 2>&1 && net stop %%i >> "%LOGFILE%" 2>&1
		
		@REM Delete or disable service
		IF "%%j"=="DELETE" (
			@REM Delete Service
			IF "%DEBUG%"=="Y" ECHO Deleting "%%i" Service >> "%LOGFILE%"
			sc query %%i >nul 2>&1 && sc delete %%i >> "%LOGFILE%" 2>&1
		) ELSE (
			@REM Disable Service
			IF "%DEBUG%"=="Y" ECHO Disabling "%%i" Service >> "%LOGFILE%"
			sc query %%i >nul 2>&1 && sc config %%i start= disabled >> "%LOGFILE%" 2>&1
		)
	)
)

@REM Footer
ECHO [%DATE% %TIME%] END DISABLE SERVICES >> "%LOGFILE%"
ECHO   DONE