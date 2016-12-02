@REM Disable Microsoft Windows Error Reporting

@REM Configuration
SET PLUGINNAME=disable_MSWER
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
ECHO [%DATE% %TIME%] BEGIN DISABLE MS WINDOWS ERROR REPORTING PLUGIN >> "%LOGFILE%"
ECHO * Disable Microsoft Windows Error Reporting ...

@REM Main
IF "%DISABLEMSWER%"=="N" (
	ECHO Skipping Disable MS WER >> "%LOGFILE%"
	ECHO   Skipping Disable MS WER
) ELSE (

	ECHO Disabling Microsoft Windows Error Reporting: >> "%LOGFILE%"
	ECHO   Modifying Registry

	SET rkey=HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\PCHealth\ErrorReporting
	reg ADD "%rkey%" /f /t reg_dword /v DoReport /d 0 >> "%LOGFILE%" 2>&1

	SET rkey=HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Windows Error Reporting
	reg ADD "%rkey%" /f /t reg_dword /v Disabled /d 1 >> "%LOGFILE%" 2>&1
)

@REM Footer
ECHO [%DATE% %TIME%] END DISABLE MS WINDOWS ERROR REPORTING PLUGIN >> "%LOGFILE%"
ECHO   DONE