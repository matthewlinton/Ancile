@REM regown - Set the owner for registry keys to the administrator.

SET KEYFILES=%DATADIR%\regkeyown\*.lst
SET BINSETACL=%LIBDIR%\setacl-%SYSARCH%.exe

ECHO [%DATE% %TIME%] BEGIN REGISTRY KEY OWNERSHIP >> "%LOGFILE%"
ECHO Modifying registry key ownership

@REM Loop through list of registry keys and change their owner
FOR /F "eol=# tokens=*" %%k IN ('TYPE "%KEYFILES%" 2^>^> "%LOGFILE%"') DO (
	IF "%DEBUG%"=="Y" (
		reg query "%%k" >nul 2>&1 && "%BINSETACL%" -on "%%k" -ot reg -actn setowner -ownr n:S-1-5-32-544 >> "%LOGFILE%" 2>&1
		IF %ERRORLEVEL% NEQ 0 DO SET /A ANCERRLVL=ANCERRLVL+1
		reg query "%%k" >nul 2>&1 && "%BINSETACL%" -on "%%k" -ot reg -actn ace -ace "n:S-1-5-32-544;p:full" >> "%LOGFILE%" 2>&1
		IF %ERRORLEVEL% NEQ 0 DO SET /A ANCERRLVL=ANCERRLVL+1
	) ELSE (
		reg query "%%k" >nul 2>&1 && "%BINSETACL%" -on "%%k" -ot reg -actn setowner -ownr n:S-1-5-32-544 >nul 2>&1
		IF %ERRORLEVEL% NEQ 0 DO SET /A ANCERRLVL=ANCERRLVL+1
		reg query "%%k" >nul 2>&1 && "%BINSETACL%" -on "%%k" -ot reg -actn ace -ace "n:S-1-5-32-544;p:full" >nul 2>&1
		IF %ERRORLEVEL% NEQ 0 DO SET /A ANCERRLVL=ANCERRLVL+1
	)
)

ECHO [%DATE% %TIME%] END REGISTRY KEY OWNERSHIP >> "%LOGFILE%"