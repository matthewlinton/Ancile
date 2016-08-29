@REM mkrestore - Create a system restore point

SET /P yesno="* create system restore point? (Y/n):  "
IF /I "%yesno:~,1%" equ "n" GOTO RESTOREEND
IF /I "%yesno:~,1%" equ "N" GOTO RESTOREEND

@REM Create a system restore point
:RESTOREPOINT
ECHO * Creating Windows restore point... 
wmic.exe /namespace:\\root\default path systemrestore call createrestorepoint "%APPNAME% v%VERSION%", 100, 12 >> %LOGFILE% 2>&1

IF %ERRORLEVEL% equ 0 DO SET /A ANCERRLVL=ANCERRLVL+1 & GOTO RESTOREEND

SET /P yesno="Failed to create system restore point. Continue? (y/N):  "
IF /I "%yesno:~,1%" equ "y" GOTO RESTOREPOINT
IF /I "%yesno:~,1%" equ "Y" GOTO RESTOREPOINT

:RESTOREEND
ECHO   DONE