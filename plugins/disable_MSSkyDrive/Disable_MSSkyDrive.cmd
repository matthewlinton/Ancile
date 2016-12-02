@REM disable_MSSkyDrive - Disable Microsoft SkyDrive. disable file sync and remove windows explorer icon.

SET PLUGINNAME=disable_MSSkyDrive
SET PLUGINVERSION=1.0
SET PLUGINDIR=%SCRIPTDIR%\%PLUGINNAME%

ECHO [%DATE% %TIME%] BEGIN DISBLE MS SKY DRIVE PLUGIN >> "%LOGFILE%"
ECHO * Disable MS Sky Drive ...

IF "%DISABLEMSSKYDRIVE%"=="N" (
	ECHO Skipping Disable Microsoft Sky Drive >> "%LOGFILE%"
	ECHO   Skipping Disable MS Sky Drive
) ELSE (
	ECHO   Modifying Registry
	
	SET rkey=HKEY_LOCAL_MACHINE\SOFTWARE\policies\microsoft\windows\skydrive
	reg ADD "%rkey%" /f /t reg_dword /v DisableFileSync /d 1 >> "%LOGFILE%" 2>&1
	
	SET rkey=HKEY_CLASSES_ROOT\CLSID\{8E74D236-7F35-4720-B138-1FED0B85EA75}\ShellFolder
	reg ADD "%rkey%" /f /t reg_dword /v Attributes /d 0 >> "%LOGFILE%" 2>&1
)

ECHO [%DATE% %TIME%] END DISBLE MS SKY DRIVE PLUGIN >> "%LOGFILE%"
ECHO   DONE