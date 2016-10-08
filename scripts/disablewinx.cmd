@REM disablewinx - Disable Windows 10 upgrade
@REM			   This script requires the setacl binary

SET WINXDIR=%systemdrive%\$windows.~bt

IF NOT EXIST "%BINSETACL%" (
	ECHO ERROR! setacl command not found. Unable to continue! >> "%LOGFILE%"
	SET /A ANCERRLVL=ANCERRLVL+1
	GOTO DISABLEWINXEND
)

ECHO [%DATE% %TIME%] BEGIN DISABLE WIN 10 UPGRADE >> "%LOGFILE%"
ECHO * Disabling Windows 10 Upgrade ... 

ECHO Killing Get Windows 10 tasks: >> "%LOGFILE%"
ECHO ** Stopping Get Windows 10 process
tasklist 2>&1 | findstr /I gwx.exe >> "%LOGFILE%" 2>&1 && taskkill /F /IM gwx.exe /T >> "%LOGFILE%" 2>&1
tasklist 2>&1 | findstr /I gwxux.exe >> "%LOGFILE%" 2>&1 && taskkill /F /IM gwxux.exe /T >> "%LOGFILE%" 2>&1
SET rkey=hkey_local_machine\software\policies\microsoft\windows\gwx
reg ADD "%rkey%" /f /t reg_dword /v disablegwx /d 1 >> "%LOGFILE%" 2>&1

@REM Disable Windows 10 upgrade
ECHO Adding disableosupgrade registry key: >> "%LOGFILE%"
ECHO ** Disabling Windows 10 Update
SET rkey=hkey_local_machine\software\policies\microsoft\windows\windowsupdate
reg ADD "%rkey%" /f /t reg_dword /v disableosupgrade /d 1 >> "%LOGFILE%" 2>&1 

@REM Disable the windows 10 download
ECHO Locking Windows 10 download directory: >> "%LOGFILE%"
ECHO ** Disabling Windows 10 Download
IF EXIST "%WINXDIR%" (
	"%BINSETACL%" -on "%WINXDIR%" -ot file -actn setprot -op dacl:np;sacl:nc -rec cont_obj -actn setowner -ownr n:S-1-5-32-544 >> "%LOGFILE%" 2>&1
	RMDIR /Q /S "%WINXDIR%" >> "%LOGFILE%" 2>&1
)
MKDIR "%WINXDIR%" >> "%LOGFILE%" 2>&1
attrib +h "%WINXDIR%" >> "%LOGFILE%" 2>&1
"%BINSETACL%" -on "%WINXDIR%" -ot file -actn setprot -op dacl:p_nc;sacl:p_nc -rec cont_obj -actn setowner -ownr n:S-1-5-32-544 >> "%LOGFILE%" 2>&1

ECHO [%DATE% %TIME%] END DISABLE WIN 10 UPGRADE >> "%LOGFILE%"
ECHO   DONE