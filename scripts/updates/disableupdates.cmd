@REM disableupdates - uninstall and hide unwanted Windows updates.
@REM			   	  This script requires the setacl binary
@REM				  kbupdate.txt - A list of updates that will be uninstalled and hidden

IF NOT EXIST "%BINSETACL%" (
	ECHO ERROR! setacl command not found. Unable to continue! >> "%LOGFILE%"
	SET /A ANCERRLVL=ANCERRLVL+1
	GOTO DISABLEWINXEND
)

SET UPDTDISABLE=%SCRIPTDIR%\updates\UninstallAndHideUpdates.ps1
SET UPDATESLIST=%SCRIPTDIR%\updates\kbupdates.txt
SET UPDATEPACK=%SYSTEMDRIVE%\windows\servicing\packages

ECHO [%DATE% %TIME%] BEGIN DISABLE WINDOWS UPDATES >> "%LOGFILE%"
ECHO * Disabling Windows Updates ... 
ECHO   This may take a long time. Please be patient.

@REM Modifying Windows Update Behavior
ECHO Modifying Registry Entries: >> "%LOGFILE%"
ECHO ** Modifying Windows update
SET rkey=hkey_local_machine\software\microsoft\windows\currentversion\windowsupdate\auto update
reg ADD "%rkey%" /f /t reg_dword /v auoptions /d 2  >> "%LOGFILE%" 2>&1
reg ADD "%rkey%" /f /t reg_dword /v enablefeaturedsoftware /d 0  >> "%LOGFILE%" 2>&1
reg ADD "%rkey%" /f /t reg_dword /v includerecommendedupdates /d 0  >> "%LOGFILE%" 2>&1

@REM Uninstall Windows updates. Delete Windows update packages.
ECHO Uninstalling and Disabling Windows Updates: >> "%LOGFILE%"
ECHO ** Uninstalling Updates
powershell -executionpolicy remotesigned -File "%UPDTDISABLE%" -KBFile "%UPDATESLIST%" >> "%LOGFILE%" 2>&1

@REM Restart Windows Update services
ECHO Restarting Windows Update Services: >> "%LOGFILE%"
ECHO ** Restarting Services
sc query wuauserv 2>&1 | findstr /I running >nul 2>&1 && net stop wuauserv >> "%LOGFILE%" 2>&1
sc query bits 2>&1 | findstr /I running >nul 2>&1 && net stop bits >> "%LOGFILE%" 2>&1
net start bits >> "%LOGFILE%" 2>&1
net start wuauserv >> "%LOGFILE%" 2>&1

ECHO [%DATE% %TIME%] END DISABLE WINDOWS UPDATES >> "%LOGFILE%"
ECHO   DONE