@REM disableservices - Parse through the services script directory
@REM	and run any scripts that are in there

SET SVCDIR=%SCRIPTDIR%\services
SET SVCSCRIPTS=%SVCDIR%\*.cmd

ECHO [%DATE% %TIME%] BEGIN DISABLE SERVICES >> "%LOGFILE%"
ECHO * Disabling Services ... 

FOR /F %%i IN ('DIR /B "%SVCSCRIPTS%" 2^>^>"%LOGFILE%"') DO (
	CALL "%SVCDIR%\%%i"
)

ECHO [%DATE% %TIME%] END DISABLE SERVICES >> "%LOGFILE%"
ECHO   DONE