@REM Delete Microsoft Diagnostics Tracking

ECHO Disabling Microsoft Diagnostics Tracking: >> "%LOGFILE%"
ECHO ** Diagnostics Tracking

sc query diagtrack 2>&1 | findstr /i running >nul 2>&1 && net stop diagtrack >> "%LOGFILE%" 2>&1
sc query diagtrack >nul 2>&1 && sc delete diagtrack >> "%LOGFILE%" 2>&1
sc query dmwappushservice 2>&1 | findstr /i running >nul 2>&1 && net stop dmwappushservice >> "%LOGFILE%" 2>&1
sc query dmwappushservice >nul 2>&1 && sc delete dmwappushservice >> "%LOGFILE%" 2>&1

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

takeown /F %PROGRAMDATA%\Microsoft\Diagnosis /A /R /D y >> "%LOGFILE%" 2>&1
icacls %PROGRAMDATA%\Microsoft\Diagnosis /grant:r *S-1-5-32-544:F /T /C >> "%LOGFILE%" 2>&1
DEL /F /Q %PROGRAMDATA%\Microsoft\Diagnosis\*.rbs >> "%LOGFILE%" 2>&1
DEL /F /Q /S %PROGRAMDATA%\Microsoft\Diagnosis\ETLLogs\* >> "%LOGFILE%" 2>&1