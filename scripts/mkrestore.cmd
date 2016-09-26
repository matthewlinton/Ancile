@REM mkrestore - Create a system restore point
ECHO [%DATE% %TIME%] BEGIN CREATE RESTORE POINT >> "%LOGFILE%"

IF "%SYSTEMRESTORE%"=="Y" (
	ECHO * Creating Windows restore point... 
	GOTO RESTOREPOINT
)
IF "%SYSTEMRESTORE%"=="N" (
	ECHO Skipping geration of Windows restore point >> "%LOGFILE%"
	ECHO * Skipping Windows Restore Point
	GOTO RESTOREEND
)

@REM Ask the user what to do
SET yesno=Y
SET /P yesno="* create system restore point? (Y/n):  "
IF /I "%yesno:~,1%" EQU "n" GOTO RESTOREEND
IF /I "%yesno:~,1%" EQU "N" GOTO RESTOREEND

:RESTOREPOINT
@REM Create a system restore point
wmic.exe /namespace:\\root\default path systemrestore call createrestorepoint "%APPNAME% v%VERSION%", 100, 12 >> %LOGFILE% 2>&1

IF %ERRORLEVEL% NEQ 0 SET /A ANCERRLVL=ANCERRLVL+1
IF %ERRORLEVEL% EQU 0 GOTO RESTOREEND

SET yesno=N
SET /P yesno="Failed to create system restore point. Retry? (y/N):  "
IF /I "%yesno:~,1%" EQU "y" GOTO RESTOREPOINT
IF /I "%yesno:~,1%" EQU "Y" GOTO RESTOREPOINT

:RESTOREEND
ECHO [%DATE% %TIME%] END CREATE RESTORE POINT >> "%LOGFILE%"
ECHO   DONE