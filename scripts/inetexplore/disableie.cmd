@REM disableie - Disable automated delivery of internet explorer
@REM			 This script relies on third party code from Microsoft

SET IESCRIPTDIR=%SCRIPTDIR%\inetexplore

ECHO [%DATE% %TIME%] BEGIN DISABLE IE UPDATE >> "%LOGFILE%"

IF NOT "%DISABLEIE%"=="N" (
	ECHO * Disabling IE Update ... 

	ECHO ** Internet Explorer 7
	start "Disable IE7" /b /wait "%IESCRIPTDIR%\disable7.cmd" . /B >> "%LOGFILE%" 2>&1
	ECHO ** Internet Explorer 8
	start "Disable IE8" /b /wait "%IESCRIPTDIR%\disable8.cmd" . /B >> "%LOGFILE%" 2>&1
	ECHO ** Internet Explorer 9
	start "Disable IE9" /b /wait "%IESCRIPTDIR%\disable9.cmd" . /B >> "%LOGFILE%" 2>&1
	ECHO ** Internet Explorer 10
	start "Disable IE10" /b /wait "%IESCRIPTDIR%\disable10.cmd" . /B >> "%LOGFILE%" 2>&1
	ECHO ** Internet Explorer 11
	start "Disable IE11" /b /wait "%IESCRIPTDIR%\disable11.cmd" . /B >> "%LOGFILE%" 2>&1
) ELSE (
	ECHO SKIPPED:  DISABLEIE = "%DISABLEIE%">> "%LOGFILE%"
	ECHO ** Skipping IE Update configuration
)
ECHO [%DATE% %TIME%] END DISABLE IE UPDATE >> "%LOGFILE%"
ECHO   DONE