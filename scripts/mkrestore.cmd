@REM mkrestore - Create a system restore point

ECHO.
SET /p yesno="* create system restore point? (Y/n):  "
IF /i "%yesno:~,1%" equ "n" GOTO RESTOREEND
IF /i "%yesno:~,1%" equ "N" GOTO RESTOREEND

@REM Create a system restore point
:RESTOREPOINT
ECHO * Creating Windows restore point... 
wmic.exe /namespace:\\root\default path systemrestore call createrestorepoint "%APPNAME% v%VERSION%", 100, 12 2>&1 >> %LOGFILE%

IF %ERRORLEVEL% equ 0 DO SET /A ANCERRLVL=ANCERRLVL+1 & GOTO RESTOREEND

SET /p yesno="Failed to create system restore point. Continue? (y/N):  "
IF /i "%yesno:~,1%" equ "y" GOTO RESTOREPOINT
IF /i "%yesno:~,1%" equ "Y" GOTO RESTOREPOINT

:RESTOREEND
ECHO   DONE
ECHO.