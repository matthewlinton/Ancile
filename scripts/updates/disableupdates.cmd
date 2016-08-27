@REM disableupdates - uninstall and hide unwanted Windows updates.
@REM			   	  This script requires the setacl binary
@REM				  kbupdate.txt - A list of updates that will be uninstalled and hidden

IF NOT EXIST "%BINSETACL%" (
	ECHO ERROR! setacl command not found. Unable to continue! >> "%LOGFILE%"
	SET /A ANCERRLVL=ANCERRLVL+1
	GOTO DISABLEWINXEND
)

SET HIDEUD=%SCRIPTDIR%\updates\ps\updates_hide.ps1
SET UPDATESLIST=%SCRIPTDIR%\updates\kbupdates.txt
SET UPDATEPACK=%SYSTEMDRIVE%\windows\servicing\packages

ECHO [%DATE% %TIME%] BEGIN DISABLE WINDOWS UPDATES >> "%LOGFILE%"
ECHO * Disabling Windows Updates ... 
ECHO   This may take a long time. Please be patient.

@REM Uninstall Windows updates
ECHO ** Uninstalling Updates
ECHO Uninstalling Windows Updates: >> "%LOGFILE%"
FOR /F "tokens=1" %%i IN ('TYPE "%UPDATESLIST%"') DO (
	ECHO Uninstalling KB%%i >> "%LOGFILE%"
	wusa /uninstall /kb:%%i /quiet /norestart  >> "%LOGFILE%" 2>&1
)

@REM Deleting Windows update packages
ECHO ** Deleting Packages
ECHO Deleting Windows Update packages: >> "%LOGFILE%"
FOR /F "tokens=1" %%i IN ('TYPE "%UPDATESLIST%"') DO (
	IF EXIST "%UPDATEPACK%\package_for_KB%%i*" (
		ECHO Cleaning %UPDATEPACK%\package_for_KB%%i >> "%LOGFILE%"
		"%BINSETACL%" -on "%UPDATEPACK%\*KB%%i*.*" -ot file -actn setprot -op dacl:np;sacl:nc -rec cont_obj -actn setowner -ownr n:administrators >> "%LOGFILE%" 2>&1
		RMDIR /Q /S "%UPDATEPACK%\*KB%%i*.*" >> "%LOGFILE%" 2>&1
	)
)

@REM Hide Windows Updates
ECHO ** Hiding Updates
ECHO Hiding Windows Updates: >> "%LOGFILE%"
ECHO TODO: Hiding Windows Updates has been disabled in version 0.4 >> "%LOGFILE%"

@REM Restart Windows Update services
ECHO ** Restarting Services
ECHO Restarting Windows Update Services: >> "%LOGFILE%"
sc query wuauserv 2>&1 | findstr /I running >nul 2>&1 && net stop wuauserv >> "%LOGFILE%" 2>&1
sc query bits 2>&1 | findstr /I running >nul 2>&1 && net stop bits >> "%LOGFILE%" 2>&1
net start bits >> "%LOGFILE%" 2>&1
net start wuauserv >> "%LOGFILE%" 2>&1

ECHO [%DATE% %TIME%] END DISABLE WINDOWS UPDATES >> "%LOGFILE%"
ECHO   DONE