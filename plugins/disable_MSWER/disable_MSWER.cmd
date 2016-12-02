@REM Disable Microsoft Windows Error Reporting

SET PLUGINNAME=disable_MSWER
SET PLUGINVERSION=1.0
SET PLUGINDIR=%SCRIPTDIR%\%PLUGINNAME%

ECHO [%DATE% %TIME%] BEGIN DISABLE MS WINDOWS ERROR REPORTING PLUGIN >> "%LOGFILE%"
ECHO * Disable Microsoft Windows Error Reporting ...

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

ECHO [%DATE% %TIME%] END DISABLE MS WINDOWS ERROR REPORTING PLUGIN >> "%LOGFILE%"
ECHO   DONE