@REM synctime - Sync windows time to pool.ntp.org

@REM Dependencies
IF NOT "%APPNAME%"=="Ancile" (
	ECHO ERROR: Sync Windows Time is meant to be launched by Ancile, and will not run as a stand alone script.
	ECHO Press any key to exit ...
	PAUSE >nul 2>&1
	EXIT
)

IF %NETCONNECTED% EQU 0 (
	SET TIMESYNC=N
)

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
	
	@REM Clean NTP registry entries
	SET rkey=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DateTime\Servers
	reg query "!rkey!" >nul 2>&1 && reg delete "!rkey!" /f >> "%LOGFILE%" 2>&1
	SET rkey=HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\w32time\TimeProviders\NtpClient
	reg query "!rkey!" >nul 2>&1 && reg delete "!rkey!" /f /v specialpolltimeremaining >> "%LOGFILE%" 2>&1
	
	@REM Add ntp servers to the registry
	SET rkey=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DateTime\Servers
	reg ADD "!rkey!" /f /t reg_sz /d 0 >> "%LOGFILE%" 2>&1
	
	SET count=0
	FOR %%i IN (!NTPSERVERS!) DO (
		IF "%DEBUG%"=="Y" ECHO Adding NTP Server !count!: %%i >> "%LOGFILE%"
		reg ADD "!rkey!" /f /t reg_sz /v !count! /d %%i >> "%LOGFILE%" 2>&1
		SET /A count+=1
	)
	
	@REM Configure NTP Polling
	SET rkey=HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlset\Services\w32time\TimeProviders\NtpClient
	reg ADD "!rkey!" /f /t reg_dword /v specialpollinterval /d 14400 >> "%LOGFILE%" 2>&1
	
	@REM Add peerlist
	SET mplist=
	FOR %%i IN (!NTPSERVERS!) DO (
		IF "!mplist!"=="" (
			SET mplist=%%i
		) ELSE (
			SET mplist=!mplist! %%i
		)
	)

	w32tm /config /syncfromflags:manual /manualpeerlist:"!mplist!" >> "%LOGFILE%"
	
	@REM Start time service
	sc config w32time start= delayed-auto >> "%LOGFILE%" 2>&1
	net start w32time >> "%LOGFILE%" 2>&1

	@REM Force NTP sync
	w32tm /config /update >> "%LOGFILE%" 2>&1
	w32tm /resync | findstr /i available >nul 2>&1 && SET /A _timerr+=1
	
	@REM Check for errors
	IF !_timerr! GTR 0 (
		ECHO **** Error during NTP time Sync **** >> "%LOGFILE%"
		ECHO Servers: "!NTPSERVERS!" >> "%LOGFILE%"
		sc query w32time >> "%LOGFILE%" 2>&1
		w32tm /query /configuration >> "%LOGFILE%" 2>&1
		w32tm /resync >> "%LOGFILE%" 2>&1
		SET /A "ANCERRLVL+=1"
	) ELSE (
		ECHO Time sync successfull >> "%LOGFILE%"
	)
)

Setlocal DisableDelayedExpansion

ECHO [%DATE% %TIME%] END NTP SYNC >> "%LOGFILE%"