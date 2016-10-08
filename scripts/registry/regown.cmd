@REM regown - Set the owner for registry keys to the administrator.
@REM		  regkeys.txt - List of registry keys to modify

SET KEYFILE=%SCRIPTDIR%\registry\regkeys.txt

ECHO [%DATE% %TIME%] BEGIN REGISTRY KEY OWNERSHIP >> "%LOGFILE%"
ECHO * Fixing registry key ownership ... 

@REM Loop through list of registry keys and change their owner
FOR /F "tokens=*" %%k IN ('TYPE "%KEYFILE%"') DO (
	reg query "%%k" >nul 2>&1 && "%BINSETACL%" -on "%%k" -ot reg -actn setowner -ownr n:S-1-5-32-544 >> "%LOGFILE%" 2>&1
	IF %ERRORLEVEL% NEQ 0 DO SET /A ANCERRLVL=ANCERRLVL+1
	reg query "%%k" >nul 2>&1 && "%BINSETACL%" -on "%%k" -ot reg -actn ace -ace "n:S-1-5-32-544;p:full" >> "%LOGFILE%" 2>&1
	IF %ERRORLEVEL% NEQ 0 DO SET /A ANCERRLVL=ANCERRLVL+1
)

ECHO [%DATE% %TIME%] END REGISTRY KEY OWNERSHIP >> "%LOGFILE%"
ECHO   DONE