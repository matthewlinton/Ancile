@REM disablewinx - Disable Windows 10 upgrade

@REM Configuration. 
SET PLUGINNAME=disable_winx
SET PLUGINVERSION=1.0
SET PLUGINDIR=%SCRIPTDIR%\%PLUGINNAME%
SET WINXDIR=%SYSTEMDRIVE%\$windows.~bt

ECHO [%DATE% %TIME%] BEGIN DISABLE WIN 10 UPGRADE >> "%LOGFILE%"
ECHO * Disabling Windows 10 Upgrade ... 

IF "%DISABLEWINXUPDATE%"=="N" (
	ECHO Skipping Disable Windows 10 Upgrade >> "%LOGFILE%"
	ECHO   Skipping Disable Windows 10 Upgrade
) ELSE (
	ECHO Killing Get Windows 10 tasks: >> "%LOGFILE%"
	ECHO   Stopping Get Windows 10 process
	tasklist 2>&1 | findstr /I gwx.exe >> "%LOGFILE%" 2>&1 && taskkill /F /IM gwx.exe /T >> "%LOGFILE%" 2>&1
	tasklist 2>&1 | findstr /I gwxux.exe >> "%LOGFILE%" 2>&1 && taskkill /F /IM gwxux.exe /T >> "%LOGFILE%" 2>&1
	SET rkey=HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\GWX
	reg ADD "%rkey%" /f /t reg_dword /v DisableGWX /d 1 >> "%LOGFILE%" 2>&1

	@REM Disable Windows 10 upgrade
	ECHO Adding disableosupgrade registry key: >> "%LOGFILE%"
	ECHO   Disabling Windows 10 Update
	SET rkey=HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Windowsupdate
	reg ADD "%rkey%" /f /t reg_dword /v DisableOSUpgrade /d 1 >> "%LOGFILE%" 2>&1 

	@REM Disable the windows 10 download
	ECHO Locking Windows 10 download directory: >> "%LOGFILE%"
	ECHO   Disabling Windows 10 Download
	IF EXIST "%WINXDIR%" (
		takeown /F "%WINXDIR%" /A /R /D y >> "%LOGFILE%" 2>&1
		RMDIR /Q /S "%WINXDIR%" >> "%LOGFILE%" 2>&1
	)
	MKDIR "%WINXDIR%" >> "%LOGFILE%" 2>&1
	attrib +h "%WINXDIR%" >> "%LOGFILE%" 2>&1
	takeown /F "%WINXDIR%" /A /R /D y >> "%LOGFILE%" 2>&1
	icacls "%WINXDIR%" /grant:r *S-1-5-32-544:F /T /C >> "%LOGFILE%" 2>&1
)

ECHO [%DATE% %TIME%] END DISABLE WIN 10 UPGRADE >> "%LOGFILE%"
ECHO   DONE