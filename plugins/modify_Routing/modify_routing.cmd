@REM modify_Routing - Modify the routing table with blocked IPs

SETLOCAL

@REM Configuration
SET PLUGINNAME=modify_Routing
SET PLUGINVERSION=1.1
SET PLUGINDIR=%SCRIPTDIR%\%PLUGINNAME%

SET IPLISTS=%DATADIR%\%PLUGINNAME%\*.lst

IF "%ROUTESREDIRECT%"=="" SET ROUTESREDIRECT=0.0.0.0

@REM Dependencies
IF NOT "%APPNAME%"=="Ancile" (
	ECHO ERROR: %PLUGINNAME% is meant to be launched by Ancile, and will not run as a stand alone script.
	ECHO Press any key to exit ...
	PAUSE >nul 2>&1
	EXIT
)

@REM Header
ECHO [%DATE% %TIME%] BEGIN ROUTING TABLE MODIFICATION >> "%LOGFILE%"
ECHO * Modifying Routing Table ...

@REM Main
IF "%MODIFYROUTES%"=="N" (
	ECHO Skipping modification of routing table: >> "%LOGFILE%"
	ECHO   Skipping routing table
) ELSE (
	ECHO Modifying routing table: >> "%LOGFILE%"
	ECHO   Updating routing table
	
	IF "%DEBUG%"=="Y" route PRINT >> "%LOGFILE%" 2>&1
	
	@REM Loop through the lists of IP addresses and add new ones
	FOR /F "eol=# tokens=1,2,* delims=, " %%i IN ('TYPE "%IPLISTS%" 2^>^> "%LOGFILE%"') DO (
		IF "%DEBUG%"=="Y" (
			ECHO Route: "%%i" : "%%j" : "%ROUTESREDIRECT%" >> "%LOGFILE%" 2>&1
			route ADD %%i MASK %%j %ROUTESREDIRECT% -p >> "%LOGFILE%" 2>&1
		) ELSE (
			route ADD %%i MASK %%j %ROUTESREDIRECT% -p > nul 2>&1
		)
	)
)

@REM Footer
ECHO [%DATE% %TIME%] END ROUTING TABLE MODIFICATION >> "%LOGFILE%"
ECHO   DONE

ENDLOCAL
