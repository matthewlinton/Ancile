@REM disable_MSAEP - Disable Microsoft's Application Experience Program

SETLOCAL

@REM Configuration
SET PLUGINNAME=disable_MSAEP
SET PLUGINVERSION=1.1
SET PLUGINDIR=%SCRIPTDIR%\%PLUGINNAME%
SET TASKSFILE=%DATADIR%\%PLUGINNAME%\disable_MSAEP.tasks.lst

@REM Dependencies
IF NOT "%APPNAME%"=="Ancile" (
	ECHO ERROR: %PLUGINNAME% is meant to be launched by Ancile, and will not run as a stand alone script.
	ECHO Press any key to exit ...
	PAUSE >nul 2>&1
	EXIT
)

@REM Header
ECHO [%DATE% %TIME%] BEGIN DISABLE MICROSOFT APPLICATION EXPERIENCE PROGRAM PLUGIN >> "%LOGFILE%"
ECHO * Disabling MS Application Experience Program ...

@REM Begin
IF "%DISABLEMSAEP%"=="N" (
	ECHO Skipping Disable MS AEP >> "%LOGFILE%"
	ECHO   Skipping Disable MS AEP
) ELSE (
	@REM Disable related tasks
	ECHO Removing MS AEP related tasks >> "%LOGFILE%"
	ECHO   Removing related tasks
	CALL modifytasks.cmd DISABLE "%TASKSFILE%"
)

@REM Footer
ECHO [%DATE% %TIME%] END DISABLE MICROSOFT APPLICATION EXPERIENCE PROGRAM PLUGIN >> "%LOGFILE%"
ECHO   DONE

ENDLOCAL
