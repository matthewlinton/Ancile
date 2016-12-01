@REM disable_MSCEIP - Disable Microsoft Customer Experience Improvement Program

SET PLUGINNAME=disable_MSCEIP
SET PLUGINVERSION=1.0
SET PLUGINDIR=%SCRIPTDIR%\%PLUGINNAME%

ECHO [%DATE% %TIME%] BEGIN DISABLE MS CEIP PLUGIN >> "%LOGFILE%"
ECHO * Disabling MS CEIP ...

IF "%DISABLEMSCEIP%"=="N" (
	ECHO Skipping Disable MS CEIP >> "%LOGFILE%"
	ECHO   Skipping Disable MS CEIP
) ELSE (
	@REM Remove from Windows
	ECHO Removing MS CEIP from system >> "%LOGFILE%"
	ECHO   Removing from system
	SET rkey=HKEY_LOCAL_MACHINE\SOFTWARE\microsoft\sqmclient\windows
	reg ADD "%rkey%" /f /t reg_dword /v ceipenable /d 0 >> "%LOGFILE%" 2>&1

	@REM Remove from Microsoft Messenger
	ECHO Removing MS CEIP from MS Messenger >> "%LOGFILE%"
	ECHO   Removing from MS Messenger
	SET rkey=HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Messenger\Client
	reg ADD "%rkey%" /f /t reg_dword /v CEIP /d 0 >> "%LOGFILE%" 2>&1
)
ECHO [%DATE% %TIME%] END DISABLE MS CEIP PLUGIN >> "%LOGFILE%"
ECHO   DONE