@REM disableupdates - uninstall and hide unwanted Windows updates.
@REM				  kbupdate.txt - A list of updates that will be uninstalled and hidden

SET UNINSTALLUD=%SCRIPTDIR%\disableupdates\uninstall.ps1
SET HIDEUD=%SCRIPTDIR%\disableupdates\hide.ps1

ECHO [%DATE% %TIME%] BEGIN DISABLE WINDOWS UPDATES >> "%LOGFILE%"
ECHO * Disabling Windows Updates ... 
ECHO   This may take a long time. Please be patient.

@REM Uninstall and hide windows updates
ECHO ** Uninstalling Updates
ECHO Uninstalling Updates: >> "%LOGFILE%"
powershell -executionpolicy bypass -file "%UNINSTALLUD%" 2>&1 >> "%LOGFILE%"
ECHO ** Hiding Updates
ECHO Hiding Updates: >> "%LOGFILE%"
powershell -executionpolicy bypass -file "%HIDEUD%" 2>&1 >> "%LOGFILE%"

@REM Restart Windows Update services
sc query wuauserv 2>&1 | findstr /i running >nul 2>&1 && net stop wuauserv 2>&1 >> "%LOGFILE%"
sc query bits 2>&1 | findstr /i running >nul 2>&1 && net stop bits 2>&1 >> "%LOGFILE%"
net start bits 2>&1 >> "%LOGFILE%"
net start wuauserv 2>&1 >> "%LOGFILE%"

ECHO [%DATE% %TIME%] END DISABLE WINDOWS UPDATES >> "%LOGFILE%"
ECHO   DONE