@REM disable_IEUpdate - Disable automated delivery of internet explorer
@REM			 This script relies on third party code from Microsoft

@REM Configuration. 
SET PLUGINNAME=disable_IEUpdate
SET PLUGINVERSION=1.0
SET PLUGINDIR=%SCRIPTDIR%\%PLUGINNAME%

ECHO [%DATE% %TIME%] BEGIN DISABLE IE UPDATE >> "%LOGFILE%"
ECHO * Disabling IE Update ... 

IF "%DISABLEIEUPDATE%"=="N" (
	ECHO Skipping Disable IE Update >> "%LOGFILE%"
	ECHO   Skipping Disable IE Update
) ELSE (
	ECHO   Internet Explorer 7
	start "Disable IE7" /b /wait "%PLUGINDIR%\disable7.cmd" . /B >> "%LOGFILE%" 2>&1
	ECHO   Internet Explorer 8
	start "Disable IE8" /b /wait "%PLUGINDIR%\disable8.cmd" . /B >> "%LOGFILE%" 2>&1
	ECHO   Internet Explorer 9
	start "Disable IE9" /b /wait "%PLUGINDIR%\disable9.cmd" . /B >> "%LOGFILE%" 2>&1
	ECHO   Internet Explorer 10
	start "Disable IE10" /b /wait "%PLUGINDIR%\disable10.cmd" . /B >> "%LOGFILE%" 2>&1
	ECHO   Internet Explorer 11
	start "Disable IE11" /b /wait "%PLUGINDIR%\disable11.cmd" . /B >> "%LOGFILE%" 2>&1
)

ECHO [%DATE% %TIME%] END DISABLE IE UPDATE >> "%LOGFILE%"
ECHO   DONE