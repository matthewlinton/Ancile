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
SET /P yesno="* create system restore point? (Y/n):  "
IF /I "%yesno:~,1%" equ "n" GOTO RESTOREEND
IF /I "%yesno:~,1%" equ "N" GOTO RESTOREEND

:RESTOREPOINT
@REM Create a system restore point
wmic.exe /namespace:\\root\default path systemrestore call createrestorepoint "%APPNAME% v%VERSION%", 100, 12 >> %LOGFILE% 2>&1

IF %ERRORLEVEL% equ 0 DO SET /A ANCERRLVL=ANCERRLVL+1 & GOTO RESTOREEND

SET /P yesno="Failed to create system restore point. Continue? (y/N):  "
IF /I "%yesno:~,1%" equ "y" GOTO RESTOREPOINT
IF /I "%yesno:~,1%" equ "Y" GOTO RESTOREPOINT

:RESTOREEND
ECHO [%DATE% %TIME%] END CREATE RESTORE POINT >> "%LOGFILE%"
ECHO   DONE