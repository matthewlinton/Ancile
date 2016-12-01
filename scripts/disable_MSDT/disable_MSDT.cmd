@REM Delete Microsoft Diagnostics Tracking

SET PLUGINNAME=disable_MSDT
SET PLUGINVERSION=1.0
SET PLUGINDIR=%SCRIPTDIR%\%PLUGINNAME%

ECHO [%DATE% %TIME%] BEGIN DISABLE MSDT PLUGIN >> "%LOGFILE%"
ECHO * Disabling MS Diagnostics Tracking ...

IF "%DISABLEMSDT%"=="N" (
	ECHO Skipping disable MS DT >> "%LOGFILE%"
	ECHO   Skipping MSDT
) ELSE (
	ECHO Disabling diagnostic tracking service >> "%LOGFILE%"
	ECHO   Stopping diagtrack
	sc query diagtrack 2>&1 | findstr /i running >nul 2>&1 && net stop diagtrack >> "%LOGFILE%" 2>&1
	sc query diagtrack >nul 2>&1 && sc delete diagtrack >> "%LOGFILE%" 2>&1
	
	ECHO Disabling dmwap push service service >> "%LOGFILE%"
	ECHO   Stopping dmwap push service
	sc query dmwappushservice 2>&1 | findstr /i running >nul 2>&1 && net stop dmwappushservice >> "%LOGFILE%" 2>&1
	sc query dmwappushservice >nul 2>&1 && sc delete dmwappushservice >> "%LOGFILE%" 2>&1

	ECHO Disabling diagnostic data collection registry entries >> "%LOGFILE%"
	ECHO   Disabling diagnostic data collection
	SET rkey=HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener
	reg query "%rkey%" >nul 2>&1 && reg delete "%rkey%" /F >> "%LOGFILE%" 2>&1
	SET rkey=HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\WMI\AutoLogger\Diagtrack-Listener
	reg query "%rkey%" >nul 2>&1 && reg delete "%rkey%" /F >> "%LOGFILE%" 2>&1
	SET rkey=HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\WMI\AutoLogger\SQMLogger
	reg query "%rkey%" >nul 2>&1 && reg delete "%rkey%" /F >> "%LOGFILE%" 2>&1
	SET rkey=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack
	reg query "%rkey%" >nul 2>&1 && reg delete "%rkey%" /F >> "%LOGFILE%" 2>&1
	SET rkey=HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection
	reg query "%rkey%" >nul 2>&1 && reg delete "%rkey%" /F >> "%LOGFILE%" 2>&1

	ECHO Deleting Diagnostic Log files >> "%LOGFILE%"
	ECHO   Cleaning log files
	takeown /F %PROGRAMDATA%\Microsoft\Diagnosis /A /R /D y >> "%LOGFILE%" 2>&1
	icacls %PROGRAMDATA%\Microsoft\Diagnosis /grant:r *S-1-5-32-544:F /T /C >> "%LOGFILE%" 2>&1
	DEL /F /Q %PROGRAMDATA%\Microsoft\Diagnosis\*.rbs >> "%LOGFILE%" 2>&1
	DEL /F /Q /S %PROGRAMDATA%\Microsoft\Diagnosis\ETLLogs\* >> "%LOGFILE%" 2>&1
)

ECHO [%DATE% %TIME%] END DISABLE MSDT PLUGIN >> "%LOGFILE%"
ECHO   DONE