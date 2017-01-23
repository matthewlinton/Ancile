@REM Disable Microsoft Windows Error Reporting

SETLOCAL

@REM Configuration
SET PLUGINNAME=disable_MSWER
SET PLUGINVERSION=1.1
SET PLUGINDIR=%SCRIPTDIR%\%PLUGINNAME%
SET TASKSFILE=%DATADIR%\%PLUGINNAME%\disable_MSWER.tasks.lst

@REM Dependencies
IF NOT "%APPNAME%"=="Ancile" (
	ECHO ERROR: %PLUGINNAME% is meant to be launched by Ancile, and will not run as a stand alone script.
	ECHO Press any key to exit ...
	PAUSE >nul 2>&1
	EXIT
)

@REM Header
ECHO [%DATE% %TIME%] BEGIN DISABLE MS WINDOWS ERROR REPORTING PLUGIN >> "%LOGFILE%"
ECHO * Disable Microsoft Windows Error Reporting ...

SETLOCAL EnableDelayedExpansion

@REM Main
IF "%DISABLEMSWER%"=="N" (
	ECHO Skipping Disable MS WER >> "%LOGFILE%"
	ECHO   Skipping Disable MS WER
) ELSE (
	@REM Disable tasks
	ECHO Disabling Microsoft Windows Error Reporting tasks: >> "%LOGFILE%"
	ECHO   Disabling Tasks
	CALL modifytasks.cmd DISABLE "%TASKSFILE%"
	
	@REM Modify Registry
	ECHO Modifying Microsoft Windows Error Reporting registry: >> "%LOGFILE%"
	ECHO   Modifying Registry

	SET rkey=HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\PCHealth\ErrorReporting
	IF "%DEBUG%"=="Y" ECHO Setting "!rkey!" >> "%LOGFILE%"
	reg ADD "!rkey!" /f /t reg_dword /v DoReport /d 0 >> "%LOGFILE%" 2>&1

	SET rkey=HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Windows Error Reporting
	IF "%DEBUG%"=="Y" ECHO Setting "!rkey!" >> "%LOGFILE%"
	reg ADD "!rkey!" /f /t reg_dword /v Disabled /d 1 >> "%LOGFILE%" 2>&1
)

SETLOCAL DisableDelayedExpansion

@REM Footer
ECHO [%DATE% %TIME%] END DISABLE MS WINDOWS ERROR REPORTING PLUGIN >> "%LOGFILE%"
ECHO   DONE

ENDLOCAL