@REM disablewinx - Disable Windows 10 upgrade
@REM			   This script requires the setacl binary

SET WINXDIR=%systemdrive%\$windows.~bt

ECHO [%DATE% %TIME%] BEGIN DISABLE WIN 10 UPGRADE >> "%LOGFILE%"
ECHO * Disabling Windows 10 Upgrade ... 

@REM Disable Windows 10 upgrade
SET rkey=hkey_local_machine\software\policies\microsoft\windows\windowsupdate
reg ADD "%rkey%" /f /t reg_dword /v disableosupgrade /d 1 2>&1 >> "%LOGFILE%"

@REM Disable the windows 10 download
IF EXIST "%WINXDIR%" (
	"%BINSETACL%" -on "%WINXDIR%" -ot file -actn setprot -op dacl:np;sacl:nc -rec cont_obj -actn setowner -ownr n:administrators 2>&1 >> "%LOGFILE%"
	
	RMDIR /q /s "%WINXDIR%" 2>&1 >> "%LOGFILE%"
	MKDIR "%WINXDIR%" 2>&1 >> "%LOGFILE%"
	
	attrib +h "%WINXDIR%" 2>&1 >> "%LOGFILE%"
	"%BINSETACL%" -on "%WINXDIR%" -ot file -actn setprot -op dacl:p_nc;sacl:p_nc -rec cont_obj -actn setowner -ownr n:administrators 2>&1 >> "%LOGFILE%"
)

ECHO [%DATE% %TIME%] END DISABLE WIN 10 UPGRADE >> "%LOGFILE%"
ECHO   DONE