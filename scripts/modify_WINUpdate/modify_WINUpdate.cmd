@REM modify_WINUpdate - Modifying Windows Update Behavior

@REM Configuration.
SET PLUGINNAME=modify_WINUpdate
SET PLUGINVERSION=1.0
SET PLUGINDIR=%SCRIPTDIR%\%PLUGINNAME%

ECHO [%DATE% %TIME%] BEGIN MODIFY WINDOWS UPDATE >> "%LOGFILE%"
ECHO * Modifing Windows Update ...

IF "%MODIFYWINUPDATE%"=="N" (
	ECHO Windows Update modification Skipped: >> "%LOGFILE%"
	ECHO   Skipping Windows Update modification
	
) ELSE (
	SET rkey=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update
	reg ADD "%rkey%" /f /t reg_dword /v enablefeaturedsoftware /d 0  >> "%LOGFILE%" 2>&1
	reg ADD "%rkey%" /f /t reg_dword /v includerecommendedupdates /d 0  >> "%LOGFILE%" 2>&1
	
	IF "%DISABLEWINUPDATE%"=="Y" (
		ECHO Disabling Automatic Updates >> "%LOGFILE%"
		ECHO   Disabling Automatic Updates
		
		reg ADD "%rkey%" /f /t reg_dword /v AUOptions /d 1 >> "%LOGFILE%" 2>&1
		sc config wuauserv start= disabled >> "%LOGFILE%" 2>&1
	) ELSE (
		ECHO Modifying Automatic Updates >> "%LOGFILE%"
		ECHO   Modifying Automatic Updates
		
		reg ADD "%rkey%" /f /t reg_dword /v AUOptions /d 2 >> "%LOGFILE%" 2>&1
		sc config wuauserv start= delayed-auto >> "%LOGFILE%" 2>&1
	)
	
	@REM Restart Windows Update services
	ECHO Restarting Windows Updates Service: >> "%LOGFILE%"
	ECHO   Restarting Windows Update
	
	sc query wuauserv 2>&1 | findstr /I RUNNING >nul 2>&1 && net stop wuauserv >> "%LOGFILE%" 2>&1
	sc query bits 2>&1 | findstr /I RUNNING >nul 2>&1 && net stop bits >> "%LOGFILE%" 2>&1
	sc qc bits 2>&1 | findstr /I AUTO_START >nul 2>&1 && net start bits >> "%LOGFILE%" 2>&1
	sc qc wuauserv 2>&1 | findstr /I AUTO_START >nul 2>&1 && net start wuauserv >> "%LOGFILE%" 2>&1
)

ECHO [%DATE% %TIME%] END MODIFY WINDOWS UPDATE >> "%LOGFILE%"
ECHO   DONE