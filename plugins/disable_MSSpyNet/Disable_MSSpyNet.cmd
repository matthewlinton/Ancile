@REM disable_MSSpyNet - Disable Microsoft Spynet. Set Registry keys to unenroll you from spynet reporting

SET PLUGINNAME=disable_MSSpyNet
SET PLUGINVERSION=1.0
SET PLUGINDIR=%SCRIPTDIR%\%PLUGINNAME%

ECHO [%DATE% %TIME%] BEGIN DISABLE MS SPYNET PLUGIN >> "%LOGFILE%"
ECHO * Disable MS SpyNet ...

IF "%DISABLEMSSPYNET%"=="N" (
	ECHO Skipping Disable Microsoft SpyNet >> "%LOGFILE%"
	ECHO   Skipping Disable MS SpyNet
) ELSE (
	ECHO   Modifying Registry
	SET rkey=HKEY_LOCAL_MACHINE\SOFTWARE\microsoft\windows defender\spynet
	reg ADD "%rkey%" /f /t reg_dword /v spynetreporting /d 0 >> "%LOGFILE%" 2>&1
	reg ADD "%rkey%" /f /t reg_dword /v submitsamplesconsent /d 0 >> "%LOGFILE%" 2>&1
)

ECHO [%DATE% %TIME%] END DISABLE MS SPYNET PLUGIN >> "%LOGFILE%"
ECHO   DONE