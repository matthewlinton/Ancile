@REM Modify Services - Enable or disable services listed in a file using the Windows service control manager
@REM USAGE : modify_tasks.cmd <DELAYED|ENABLE|DISABLE|DELETE> <File to Parse>
@REM This script relies on the Ancile shell variable:
@REM "DEBUG"
@REM "ANCERRLVL"
@REM "LOGFILE"

@REM Dependencies
IF NOT "%APPNAME%"=="Ancile" (
	ECHO ERROR: Modify Services is meant to be launched by Ancile, and will not run as a stand alone script.
	ECHO Press any key to exit ...
	PAUSE >nul 2>&1
	EXIT
)

@REM make sure the file exists
IF NOT EXIST "%~2" (
	@REM make sure the file exists
	ECHO ERROR: File "%~2" could not be found. >> "%LOGFILE%" 2>&1
	SET /A ANCERRLVL=ANCERRLVL+1
) ELSE (
	@REM Disable Service
	IF "%1"=="DISABLE" (
		ECHO Disabling Tasks
		FOR /F "eol=# tokens=*" %%i IN ('TYPE "%~2" 2^>^>1') DO (
			IF "%DEBUG%"=="Y" (
				ECHO Disabling: "%%i" >> "%LOGFILE%" 2>&1
				@REM Stop Service
				sc query %%i 2>&1 | findstr /i running >nul 2>&1 && net stop %%i >> "%LOGFILE%" 2>&1
				@REM Disable service
				sc query %%i >nul 2>&1 && sc config %%i start= disabled >> "%LOGFILE%" 2>&1
			) ELSE (
				@REM Stop Service
				sc query %%i 2>&1 | findstr /i running >nul 2>&1 && net stop %%i >nul 2>&1
				@REM Disable service
				sc query %%i >nul 2>&1 && sc config %%i start= disabled >nul 2>&1
			)
		)
	)

	@REM Enable service to autostart
	IF "%1"=="ENABLE" (
		ECHO Enabling Tasks
		FOR /F "eol=# tokens=*" %%i IN ('TYPE "%~2" 2^>^>1') DO (
			IF "%DEBUG%"=="Y" (
				ECHO Enabling: "%%i" >> "%LOGFILE%" 2>&1
				@REM Stop Service
				sc query %%i 2>&1 | findstr /i running >nul 2>&1 && net stop %%i >> "%LOGFILE%" 2>&1
				@REM Enable service
				sc query %%i >nul 2>&1 && sc config %%i start= auto >> "%LOGFILE%" 2>&1
				@REM Start Service
				sc query %%i >nul 2>&1 && net restart %%i >> "%LOGFILE%" 2>&1
			) ELSE (
				@REM Stop Service
				sc query %%i 2>&1 | findstr /i running >nul 2>&1 && net stop %%i >nul 2>&1
				@REM Enable service
				sc query %%i >nul 2>&1 && sc config %%i start= auto >nul 2>&1
				@REM Start Service
				sc query %%i >nul 2>&1 && net restart %%i >nul 2>&1
			)
		)
	)

	@REM Enable service to delayed autostart
	IF "%1"=="DELAYED" (
		ECHO Enabling Tasks
		FOR /F "eol=# tokens=*" %%i IN ('TYPE "%~2" 2^>^>1') DO (
			IF "%DEBUG%"=="Y" (
				ECHO Enabling (Delayed): "%%i" >> "%LOGFILE%" 2>&1
				@REM Stop Service
				sc query %%i 2>&1 | findstr /i running >nul 2>&1 && net stop %%i >> "%LOGFILE%" 2>&1
				@REM Enable service
				sc query %%i >nul 2>&1 && sc config %%i start= delayed-auto >> "%LOGFILE%" 2>&1
				@REM Start Service
				sc query %%i >nul 2>&1 && net restart %%i >> "%LOGFILE%" 2>&1
			) ELSE (
				@REM Stop Service
				sc query %%i 2>&1 | findstr /i running >nul 2>&1 && net stop %%i >nul 2>&1
				@REM Enable service
				sc query %%i >nul 2>&1 && sc config %%i start= delayed-auto >nul 2>&1
				@REM Start Service
				sc query %%i >nul 2>&1 && net restart %%i >nul 2>&1
			)
		)
	)

	@REM Delete service
	IF "%1"=="DELETE" (
		FOR /F "eol=# tokens=*" %%i IN ('TYPE "%~2" 2^>^>1') DO (
			IF "%DEBUG%"=="Y" (
				ECHO Deleting: "%%i" >> "%LOGFILE%" 2>&1
				@REM Stop Service
				sc query %%i 2>&1 | findstr /i running >nul 2>&1 && net stop %%i >> "%LOGFILE%" 2>&1
				@REM Delete Service
				sc query %%i >nul 2>&1 && sc delete %%i >> "%LOGFILE%" 2>&1
			) ELSE (
				@REM Stop Service
				sc query %%i 2>&1 | findstr /i running >nul 2>&1 && net stop %%i >nul 2>&1
				@REM Delete Service
				sc query %%i >nul 2>&1 && sc delete %%i >nul 2>&1
			)
		)
	)
)