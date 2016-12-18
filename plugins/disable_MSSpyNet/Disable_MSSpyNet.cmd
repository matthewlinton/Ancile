@REM disable_MSSpyNet - Disable Microsoft Spynet. Set Registry keys to unenroll you from spynet reporting

@REM Configuration
SET PLUGINNAME=disable_MSSpyNet
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
ECHO [%DATE% %TIME%] BEGIN DISABLE MICROSOFT SPYNET PLUGIN >> "%LOGFILE%"
ECHO * Disable MS SpyNet ...

@REM Begin
IF "%DISABLEMSSPYNET%"=="N" (
	ECHO Skipping Disable Microsoft SpyNet >> "%LOGFILE%"
	ECHO   Skipping Disable MS SpyNet
) ELSE (
	ECHO   Modifying Registry
	SET rkey=HKEY_LOCAL_MACHINE\SOFTWARE\microsoft\windows defender\spynet
	reg ADD "%rkey%" /f /t reg_dword /v spynetreporting /d 0 >> "%LOGFILE%" 2>&1
	reg ADD "%rkey%" /f /t reg_dword /v submitsamplesconsent /d 0 >> "%LOGFILE%" 2>&1
)

@REM Footer
ECHO [%DATE% %TIME%] END DISABLE MICROSOFT SPYNET PLUGIN >> "%LOGFILE%"
ECHO   DONE