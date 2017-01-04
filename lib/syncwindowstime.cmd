@REM synctime - Sync windows time to pool.ntp.org

ECHO [%DATE% %TIME%] BEGIN NTP SYNC >> "%LOGFILE%"

Setlocal EnableDelayedExpansion

IF "%TIMESYNC%"=="N" (
	ECHO Skipping NTP settings and time sync >> "%LOGFILE%"
	ECHO Skipping NTP time sync
) ELSE (
	ECHO Syncing Windows Time

	IF "%NTPSERVERS%"=="" SET NTPSERVERS=0.pool.ntp.org,1.pool.ntp.org,2.pool.ntp.org,3.pool.ntp.org
	
	@REM Stop Windows network time
	sc query w32time 2>&1 | findstr /i running >nul 2>&1 && net stop w32time >> "%LOGFILE%" 2>&1
	
	@REM Add ntp servers
	SET rkey=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DateTime\Servers
	reg ADD "!rkey!" /f /t reg_sz /d 0 >> "%LOGFILE%" 2>&1
	
	SET count=0
	FOR %%i IN (!NTPSERVERS!) DO (
		IF "%DEBUG%"=="Y" ECHO Adding NTP Server !count!: %%i >> "%LOGFILE%"
		reg ADD "!rkey!" /f /t reg_sz /v !count! /d %%i >> "%LOGFILE%" 2>&1
		SET /A count+=1
	)
	
	SET rkey=HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlset\Services\w32time\TimeProviders\NtpClient
	reg ADD "!rkey!" /f /t reg_dword /v specialpollinterval /d 14400 >> "%LOGFILE%" 2>&1
	
	@REM Re-register Windows Time Service (fixes windows time service bug on some systems.)
	w32tm /unregister >nul 2>&1
	w32tm /register >> "%LOGFILE%" 2>&1
	
	@REM Start time service
	sc config w32time start= auto >> "%LOGFILE%" 2>&1
	net start w32time >> "%LOGFILE%" 2>&1

	@REM Force NTP sync
	w32tm /config /update >> "%LOGFILE%" 2>&1
	w32tm /resync >> "%LOGFILE%" 2>&1
)

Setlocal DisableDelayedExpansion

ECHO [%DATE% %TIME%] END NTP SYNC >> "%LOGFILE%"