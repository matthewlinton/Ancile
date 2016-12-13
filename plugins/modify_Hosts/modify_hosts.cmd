@REM modify_Hosts - Modify the hosts file

Setlocal EnableDelayedExpansion

@REM Configuration
SET PLUGINNAME=modify_Hosts
SET PLUGINVERSION=1.1
SET PLUGINDIR=%SCRIPTDIR%\%PLUGINNAME%

SET HOSTSFILE=%SYSTEMDRIVE%\windows\system32\drivers\etc\hosts
SET HOSTLISTS=%DATADIR%\%PLUGINNAME%\*.lst

SET HTEMPDIR=%TEMPDIR%\%PLUGINNAME%
SET TMPHOSTS=%HTEMPDIR%\system.hosts.tmp
SET TMPMODHOSTS=%HTEMPDIR%\modhosts.hosts.tmp

SET LISTBEGIN=# Start of entries inserted by %APPNAME%
SET LISTEND=# End of entries inserted by %APPNAME%

IF "%HOSTSREDIRECT%"=="" SET HOSTSREDIRECT=0.0.0.0

@REM Dependencies
IF NOT "%APPNAME%"=="Ancile" (
	ECHO ERROR: %PLUGINNAME% is meant to be launched by Ancile, and will not run as a stand alone script.
	ECHO Press any key to exit ...
	PAUSE >nul 2>&1
	EXIT
)

@REM Header
ECHO [%DATE% %TIME%] BEGIN HOST FILE MODIFICATION >> "%LOGFILE%"
ECHO * Modifying hosts File ...
ECHO   This may take a long time. Please be patient.

@REM Main
IF "%MODIFYHOSTS%"=="N" (
	ECHO Skipping modification of the hosts file >> "%LOGFILE%"
	ECHO   Skipping hosts file
) ELSE (
	IF NOT EXIST "%HTEMPDIR%" MKDIR %HTEMPDIR% >> "%LOGFILE%" 2>&1 

	@REM Clear old temp hosts files
	IF EXIST "%TMPHOSTS%" DEL /F /Q "%TMPHOSTS%" >> "%LOGFILE%" 2>&1
	IF EXIST "%TMPMODHOSTS%" DEL /F /Q "%TMPMODHOSTS%" >> "%LOGFILE%" 2>&1

	@REM Generate clean hosts file
	ECHO Generating clean hosts file >> "%LOGFILE%"
	ECHO   Generating clean hosts file
	SET wout=1
	SET linecount=0
	FOR /F "delims=" %%i IN ('TYPE "%HOSTSFILE%"') DO (
		IF "%%i"=="%LISTBEGIN%" SET wout=0
		IF !wout! EQU 1 ECHO %%i>> "%TMPHOSTS%"
		IF "%%i"=="%LISTEND%" SET wout=1
		SET /A linecount=linecount+1
	)
	ECHO Processed !linecount! Lines >> "%LOGFILE%"
	
	@REM Parse through hosts
	ECHO Adding host entries >> "%LOGFILE%"
	ECHO   Adding host entries
	ECHO %LISTBEGIN%>> "%TMPMODHOSTS%"
	SET match=0
	FOR /F "eol=#" %%k IN ('TYPE "%HOSTLISTS%" 2^>^>"%LOGFILE%"') DO (
		FOR /F "tokens=1,2" %%i IN ('findstr /V /C:"#" "%TMPHOSTS%"') DO (
			IF "%%k"=="%%j" (
				SET match=1
				IF "%DEBUG%"=="Y" ECHO Duplicate: %%k >> "%LOGFILE%"
			) 
		)
		IF !match! EQU 0 (
			ECHO %HOSTSREDIRECT%	%%k>> "%TMPMODHOSTS%"
			IF "%DEBUG%"=="Y" ECHO Adding: %%k >> "%LOGFILE%"
		)
		SET match=0
	)
	ECHO %LISTEND%>> "%TMPMODHOSTS%"
	
	@REM Copying to system hosts file
	ECHO Copying to system hosts file >> "%LOGFILE%"
	ECHO   Updating System hosts File
	attrib -R "%HOSTSFILE%"
	COPY /B /Y "%TMPHOSTS%" + "%TMPMODHOSTS%" "%HOSTSFILE%" >> "%LOGFILE%" 2>&1
	IF %ERRORLEVEL% NEQ 0 (
		ECHO ERROR: Unable to copy "%TMPHOSTS%" + "%TMPMODHOSTS%" to "%HOSTSFILE%" >> "%LOGFILE%"
		SET /A ANCERRLVL=ANCERRLVL+1
	)
	attrib +R "%HOSTSFILE%"
)

@REM Footer
ECHO [%DATE% %TIME%] END HOST FILE MODIFICATION >> "%LOGFILE%"
ECHO   DONE

Setlocal DisableDelayedExpansion