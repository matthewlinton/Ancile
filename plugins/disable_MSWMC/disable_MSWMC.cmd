@REM disable_MSAEP - Disable Microsoft's Windows Media Center Telemetry data collection

SETLOCAL

@REM Configuration
SET PLUGINNAME=disable_MSWMC
SET PLUGINVERSION=1.0
SET PLUGINDIR=%SCRIPTDIR%\%PLUGINNAME%
SET TASKSFILE=%DATADIR%\%PLUGINNAME%\disable_MSWMC.tasks.lst

@REM Dependencies
IF NOT "%APPNAME%"=="Ancile" (
	ECHO ERROR: %PLUGINNAME% is meant to be launched by Ancile, and will not run as a stand alone script.
	ECHO Press any key to exit ...
	PAUSE >nul 2>&1
	EXIT
)

@REM Header
ECHO [%DATE% %TIME%] BEGIN DISABLE MICROSOFT WINDOWS MEDIA CENTER TELEMETRY PLUGIN >> "%LOGFILE%"
ECHO * Disabling MS Windows Media Ceter Telemetry ...

@REM Begin
IF "%DISABLEMSWMC%"=="N" (
	ECHO Skipping Disable MS Windows Media Ceter Telemetry >> "%LOGFILE%"
	ECHO   Skipping Disable MS WMC
) ELSE (
	@REM Disable related tasks
	ECHO Removing MS WMC related tasks >> "%LOGFILE%"
	ECHO   Removing related tasks
	CALL modifytasks.cmd DISABLE "%TASKSFILE%"
)

@REM Footer
ECHO [%DATE% %TIME%] END DISABLE MICROSOFT WINDOWS MEDIA CENTER TELEMETRY PLUGIN >> "%LOGFILE%"
ECHO   DONE

ENDLOCAL
