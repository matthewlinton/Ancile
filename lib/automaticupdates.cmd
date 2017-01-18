@REM Automatic Updates - automatically download and update data files.

SET UPDATEFILENAME=automaticupdate.upd
SET UPDATETEMP=%TEMPDIR%\automaticupdates
SET UNZIPMODULE=%LIBDIR%\Synchronous-ZipAndUnzip.psm1

@REM Dependencies
IF NOT "%APPNAME%"=="Ancile" (
	ECHO ERROR: Automatic Updates is meant to be launched by Ancile, and will not run as a stand alone script.
	ECHO Press any key to exit ...
	PAUSE >nul 2>&1
	EXIT
)

IF %NETCONNECTED% EQU 0 (
	SET AUTOMATICUPDATES=N
)

@REM create the temp directory
IF NOT EXIST "%UPDATETEMP%" MKDIR "%UPDATETEMP%" >nul 2>&1

ECHO [%DATE% %TIME%] BEGIN AUTOMATIC UPDATES >> "%LOGFILE%"
ECHO Updating ... 

IF "%AUTOMATICUPDATES%"=="N" (
	ECHO Skipping Automatic Updates >> "%LOGFILE%"
	ECHO   Skipping Automatic Updates
) ELSE (

	@REM Loop through plugins data files and find *.upd files
	FOR /D %%i IN ("%DATADIR%\*.*") DO (
		IF EXIST "%DATADIR%\%%~nxi\%UPDATEFILENAME%" (
			@REM create the plugin temp directory
			IF NOT EXIST "%UPDATETEMP%\%%~nxi" MKDIR "%UPDATETEMP%\%%~nxi" >nul 2>&1

			ECHO   %%~nxi Plugin
			
			FOR /F "eol=# tokens=1,*" %%j IN ('TYPE "%DATADIR%\%%~nxi\%UPDATEFILENAME%" 2^>^> "%LOGFILE%"') DO (
				@REM Fetch update to temp directory
				IF "%DEBUG%"=="Y" ECHO Fetching "%%~nxi" "%%j" >> "%LOGFILE%"
				
				@REM Download update file
				IF "%DEBUG%"=="Y" (
					powershell -executionpolicy remotesigned -Command "(New-Object System.Net.WebClient).DownloadFile('%%j', '%UPDATETEMP%\%%~nxi\%%~nxj')" >> "%LOGFILE%" 2>&1
				) ELSE (
					powershell -executionpolicy remotesigned -Command "(New-Object System.Net.WebClient).DownloadFile('%%j', '%UPDATETEMP%\%%~nxi\%%~nxj')" >nul 2>&1
				)
				
				IF EXIST "%UPDATETEMP%\%%~nxi\%%~nxj" (
					@REM Extract update file
					IF "%DEBUG%"=="Y" (
						ECHO Extracting "%UPDATETEMP%\%%~nxi\%%~nxj" to "%DATADIR%\%%~nxi\" >> "%LOGFILE%"
						powershell -executionpolicy remotesigned -Command "Import-Module -Name '%UNZIPMODULE%'; Expand-ZipFile -ZipFilePath '%UPDATETEMP%\%%~nxi\%%~nxj' -DestinationDirectoryPath '%DATADIR%\%%~nxi\' -OverwriteWithoutPrompting" >> "%LOGFILE%" 2>&1
					) ELSE (
						powershell -executionpolicy remotesigned -Command "Import-Module -Name '%UNZIPMODULE%'; Expand-ZipFile -ZipFilePath '%UPDATETEMP%\%%~nxi\%%~nxj' -DestinationDirectoryPath '%DATADIR%\%%~nxi\' -OverwriteWithoutPrompting" >nul 2>&1
					)
				) ELSE (
					ECHO ERROR: Failed to download update from "%%j" >> "%LOGFILE%"
					SET /A ANCILEERRLEVEL=ANCILEERRLEVEL+1
				)
			)
		)
	)
)

ECHO [%DATE% %TIME%] END AUTOMATIC UPDATES >> "%LOGFILE%"