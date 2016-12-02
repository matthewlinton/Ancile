@REM disable_IEUpdate - Disable automated delivery of internet explorer
@REM			 This script relies on third party code from Microsoft

@REM Configuration. 
SET PLUGINNAME=disable_IEUpdate
SET PLUGINVERSION=1.1
SET PLUGINDIR=%SCRIPTDIR%\%PLUGINNAME%

@REM Dependencies
IF NOT "%APPNAME%"=="Ancile" (
	ECHO ERROR: %PLUGINNAME% is meant to be launched by Ancile, and will not run as a stand alone script.
	ECHO Press any key to exit ...
	PAUSE >nul 2>&1
	EXIT
)

@REM Header
ECHO [%DATE% %TIME%] BEGIN DISABLE INTERNET EXPLORER UPDATE PLUGIN >> "%LOGFILE%"
ECHO * Disabling IE Update ... 

@REM Begin
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

@REM Footer
ECHO [%DATE% %TIME%] END DISABLE INTERNET EXPLORER UPDATE PLUGIN >> "%LOGFILE%"
ECHO   DONE