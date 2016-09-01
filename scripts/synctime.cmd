@REM synctime - Sync windows time to pool.ntp.org

ECHO [%DATE% %TIME%] BEGIN NTP SYNC >> "%LOGFILE%"

IF "%DOTIMESYNC%"=="N" (
	ECHO Skipping NTP settings and time sync >> "%LOGFILE%"
	ECHO * Skipping NTP time sync
	GOTO ENDSYNCTIME
)

ECHO * Syncing time to pool.ntp.org ... 

@REM Configure NTP
sc query w32time 2>&1 | findstr /i running >nul 2>&1 && net stop w32time >> "%LOGFILE%" 2>&1
SET rkey=hkey_local_machine\software\microsoft\windows\currentversion\datetime\servers
reg query "%rkey%" >nul 2>&1 && reg delete "%rkey%" /f >> "%LOGFILE%" 2>&1
SET rkey=hkey_local_machine\system\currentcontrolset\services\w32time\timeproviders\ntpclient
reg query "%rkey%" >nul 2>&1 && reg delete "%rkey%" /f /v specialpolltimeremaining >> "%LOGFILE%" 2>&1
w32tm /config /syncfromflags:manual /manualpeerlist:"0.pool.ntp.org 1.pool.ntp.org 2.pool.ntp.org 3.pool.ntp.org" >> "%LOGFILE%"

@REM Add ntp servers
SET rkey=hkey_local_machine\software\microsoft\windows\currentversion\datetime\servers
reg ADD "%rkey%" /f /t reg_sz /d 0 >> "%LOGFILE%" 2>&1
reg ADD "%rkey%" /f /t reg_sz /v 0 /d 0.pool.ntp.org >> "%LOGFILE%" 2>&1
reg ADD "%rkey%" /f /t reg_sz /v 1 /d 1.pool.ntp.org >> "%LOGFILE%" 2>&1
reg ADD "%rkey%" /f /t reg_sz /v 2 /d 2.pool.ntp.org >> "%LOGFILE%" 2>&1
reg ADD "%rkey%" /f /t reg_sz /v 3 /d 3.pool.ntp.org >> "%LOGFILE%" 2>&1
SET rkey=hkey_local_machine\system\currentcontrolset\services\w32time\timeproviders\ntpclient
reg ADD "%rkey%" /f /t reg_dword /v specialpollinterval /d 14400 >> "%LOGFILE%" 2>&1

@REM Start time service
sc config w32time start= auto >> "%LOGFILE%" 2>&1
net start w32time >> "%LOGFILE%" 2>&1

@REM Force NTP sync
w32tm /config /update >> "%LOGFILE%" 2>&1
w32tm /resync >> "%LOGFILE%" 2>&1

:ENDSYNCTIME
ECHO [%DATE% %TIME%] END NTP SYNC >> "%LOGFILE%"
ECHO   DONE