SET /p yesno="* create system restore point? (y/N):  "
IF /i "%yesno:~,1%" equ "y" GOTO RESTOREPOINT
IF /i "%yesno:~,1%" equ "Y" GOTO RESTOREPOINT

@REM Create a system restore point
:RESTOREPOINT
wmic.exe /namespace:\\root\default path systemrestore call createrestorepoint "%APPNAME% v%VERSION%", 100, 12
IF %errorlevel% equ 0 GOTO BEGIN
SET /p yesno="Failed to create system restore point. continue? (y/n):  
IF /i "%yesno:~,1%" equ "y" GOTO BEGIN
IF /i "%yesno:~,1%" equ "n" GOTO END