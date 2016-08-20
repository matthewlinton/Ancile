@REM disableie - Disable automated delivery of internet explorer
@REM			 This script relies on third party code from Microsoft

SET IESCRIPTDIR=%SCRIPTDIR%\disableie

ECHO [%DATE% %TIME%] BEGIN DISABLE IE UPDATE >> "%LOGFILE%"
ECHO * Disabling IE Update ... 

ECHO ** Internet Explorer 7
start "Disable Internet Explorer 7" /b /wait "%IESCRIPTDIR%\disable7.cmd" . /B  2>&1 >> "%LOGFILE%"
ECHO ** Internet Explorer 8
start "Disable Internet Explorer 8" /b /wait "%IESCRIPTDIR%\disable8.cmd" . /B  2>&1 >> "%LOGFILE%"
ECHO ** Internet Explorer 9
start "Disable Internet Explorer 9" /b /wait "%IESCRIPTDIR%\disable9.cmd" . /B  2>&1 >> "%LOGFILE%"
ECHO ** Internet Explorer 10
start "Disable Internet Explorer 10" /b /wait "%IESCRIPTDIR%\disable10.cmd" . /B  2>&1 >> "%LOGFILE%"
ECHO ** Internet Explorer 11
start "Disable Internet Explorer 11" /b /wait "%IESCRIPTDIR%\disable11.cmd" . /B  2>&1 >> "%LOGFILE%"
  
ECHO [%DATE% %TIME%] END DISABLE IE UPDATE >> "%LOGFILE%"
ECHO   DONE