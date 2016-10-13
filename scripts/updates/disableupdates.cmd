@REM disableupdates - uninstall and hide unwanted Windows updates.
@REM			   	  This script requires the setacl binary
@REM				  kbupdate.txt - A list of updates that will be uninstalled and hidden

SET UPDTDISABLE=%SCRIPTDIR%\updates\UninstallAndHideUpdates.ps1
SET UPDATESLIST=%SCRIPTDIR%\updates\kbupdates.txt
SET UPDATEPACK=%SYSTEMDRIVE%\windows\servicing\packages

ECHO [%DATE% %TIME%] BEGIN MODIFY WINDOWS UPDATE >> "%LOGFILE%"
ECHO * Modifying Windows Update ... 
ECHO   This may take a long time. Please be patient.

@REM Collect Windows Update Information
IF NOT "%DEBUG%"=="N" (
	sc query wuauserv  >> "%LOGFILE%" 2>&1
	sc qc wuauserv >> "%LOGFILE%" 2>&1
	sc query bits >> "%LOGFILE%" 2>&1
	sc qc bits >> "%LOGFILE%" 2>&1
)
@REM Modifying Windows Update Behavior
SET rkey=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update
IF NOT "%MODWINUPDATE%"=="N" (
	IF "%DISABLEWINUPDATE%"=="Y" (
		ECHO Disabling Automatic Updates: >> "%LOGFILE%"
		ECHO ** Disabling Automatic Updates
		reg ADD "%rkey%" /f /t reg_dword /v AUOptions /d 1 >> "%LOGFILE%" 2>&1
	) ELSE (
		ECHO Modifying Automatic Updates: >> "%LOGFILE%"
		ECHO ** Modifying Automatic Updates
		reg ADD "%rkey%" /f /t reg_dword /v AUOptions /d 2 >> "%LOGFILE%" 2>&1
	)
	reg ADD "%rkey%" /f /t reg_dword /v enablefeaturedsoftware /d 0  >> "%LOGFILE%" 2>&1
	reg ADD "%rkey%" /f /t reg_dword /v includerecommendedupdates /d 0  >> "%LOGFILE%" 2>&1
) ELSE (
	ECHO Skipped >> "%LOGFILE%"
	ECHO ** Skipping Windows Update modification
)

@REM If wuauserv is running: Uninstall Windows updates. Delete Windows update packages. 
ECHO Uninstalling and Disabling Windows Updates: >> "%LOGFILE%"
ECHO ** Uninstalling Updates
IF NOT "%DEBUG%"=="N" (
	sc query wuauserv 2>&1 | findstr /I RUNNING >nul 2>&1 && powershell -executionpolicy remotesigned -File "%UPDTDISABLE%" -KBFile "%UPDATESLIST%" >> "%LOGFILE%" 2>&1
) ELSE (
	sc query wuauserv 2>&1 | findstr /I RUNNING >nul 2>&1 && powershell -executionpolicy remotesigned -File "%UPDTDISABLE%" -KBFile "%UPDATESLIST%" >> nul 2>&1
)

@REM Restart Windows Update services
IF "%DISABLEWINUPDATE%"=="Y" (
	ECHO Stopping Windows Update Services: >> "%LOGFILE%"
	ECHO ** Stopping Services
) ELSE (
	ECHO Restarting Windows Update Services: >> "%LOGFILE%"
	ECHO ** Restarting Services
)
sc query wuauserv 2>&1 | findstr /I RUNNING >nul 2>&1 && net stop wuauserv >> "%LOGFILE%" 2>&1
sc query bits 2>&1 | findstr /I RUNNING >nul 2>&1 && net stop bits >> "%LOGFILE%" 2>&1
sc qc bits 2>&1 | findstr /I AUTO_START >nul 2>&1 && net start bits >> "%LOGFILE%" 2>&1
IF "%DISABLEWINUPDATE%"=="Y" (
	sc config wuauserv start= disabled >> "%LOGFILE%" 2>&1
) ELSE (
	sc config wuauserv start= delayed-auto >> "%LOGFILE%" 2>&1
)
sc qc wuauserv 2>&1 | findstr /I AUTO_START >nul 2>&1 && net start wuauserv >> "%LOGFILE%" 2>&1

ECHO [%DATE% %TIME%] END DISABLE WINDOWS UPDATES >> "%LOGFILE%"
ECHO   DONE
