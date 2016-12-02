@REM disable_MSCEIP - Disable Microsoft Customer Experience Improvement Program

@REM Configuration
SET PLUGINNAME=disable_MSCEIP
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
ECHO [%DATE% %TIME%] BEGIN DISABLE MICROSOFT CUSTOMER EXPERIENCE IMPROVEMENT PROGRAM PLUGIN >> "%LOGFILE%"
ECHO * Disabling MS CEIP ...

@REM Begin
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

@REM Footer
ECHO [%DATE% %TIME%] END DISABLE MICROSOFT CUSTOMER EXPERIENCE IMPROVEMENT PROGRAM PLUGIN >> "%LOGFILE%"
ECHO   DONE