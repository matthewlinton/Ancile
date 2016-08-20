@REM regown - Set the owner for registry keys to the administrator.
@REM 		  This script requires setacl.
@REM		  regkeys.txt - List of registry keys to modify

SET KEYFILE=%SCRIPTDIR%\regown\regkeys.txt
SET SETACLBIN=%LIBDIR%\setacl-%ARCH%.exe

ECHO [%DATE% %TIME%] BEGIN REGISTRY KEY OWNERSHIP >> "%LOGFILE%"
ECHO * Fixing registry key ownership ... 

@REM Loop through list of registry keys and change their owner
FOR /F %%K in ('TYPE "%KEYFILE%"') DO (
	reg query "%%K" >nul 2>&1 && "%SETACLBIN%" -on "%%K" -ot reg -actn setowner -ownr n:administrators >> "%LOGFILE%" 2>&1
	IF %ERRORLEVEL% NEQ 0 DO SET /A ANCERRLVL=ANCERRLVL+1
	reg query "%%K" >nul 2>&1 && "%SETACLBIN%" -on "%%K" -ot reg -actn ace -ace "n:administrators;p:full" >> "%LOGFILE%" 2>&1
	IF %ERRORLEVEL% NEQ 0 DO SET /A ANCERRLVL=ANCERRLVL+1
)
 
ECHO [%DATE% %TIME%] END REGISTRY KEY OWNERSHIP >> "%LOGFILE%"
ECHO   DONE