@ECHO off
@REM Ancile
@REM Block all windows spying and unwanted upgrades.

@REM Configure the environment
SET APPNAME=ancile
SET VERSION=1.19

SET CURRDIR="%~dp0"
SET LIBDIR="%CURRDIR%lib"
SET SCRIPTDIR="%CURRDIR%scripts"

SET LOGFILE="%CURRDIR%%APPNAME%_%VERSION%_%DATE%.log"

@REM Make sure we're running as an administrator
net session >nul 2>&1
IF %errorlevel% NEQ 0 ECHO This script requires Administrative privileges. Exiting. & PAUSE & EXIT 1

@REM Begin Logging
ECHO BEGIN %APPNAME% v%VERSION% %DATE% %TIME% > "%LOGFILE%"
ECHO. >> "%LOGFILE%"
ECHO https://github.com/matthewlinton/ancile >> "%LOGFILE%"
ECHO. >> "%LOGFILE%"

GOTO ENDEND

:main
  wmic os get osarchitecture 2>&1|findstr /i 64-bit >nul 2>&1 && SET setacl=setacl-64.exe || SET setacl=setacl-32.exe

  :: take ownership of keys
  SET key=hkey_current_user\software\policies\microsoft\office\15.0\osm
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators %logs%
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" %logs%
  SET key=hkey_current_user\software\policies\microsoft\office\16.0\osm
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators %logs%
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" %logs%
  SET key=hkey_local_machine\software\microsoft\wcmsvc\wifinetworkmanager
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators %logs%
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" %logs%
  SET key=hkey_local_machine\software\microsoft\windows\currentversion\datetime\servers
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators %logs%
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" %logs%
  SET key=hkey_local_machine\software\microsoft\windows\currentversion\windowsupdate\auto update
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators %logs%
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" %logs%
  SET key=hkey_local_machine\software\microsoft\windows defender\spynet
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators %logs%
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" %logs%
  SET key=hkey_local_machine\software\policies\microsoft\sqmclient\windows
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators %logs%
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" %logs%
  SET key=hkey_local_machine\software\policies\microsoft\windows\datacollection
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators %logs%
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" %logs%
  SET key=hkey_local_machine\software\policies\microsoft\windows\gwx
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators %logs%
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" %logs%
  SET key=hkey_local_machine\software\policies\microsoft\windows\scripteddiagnosticsprovider\policy
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators %logs%
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" %logs%
  SET key=hkey_local_machine\software\policies\microsoft\windows\skydrive
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators %logs%
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" %logs%
  SET key=hkey_local_machine\software\policies\microsoft\windows\windowsupdate
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators %logs%
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" %logs%
  SET key=hkey_local_machine\system\currentcontrolset\control\wmi\autologger\autoLogger-diagtrack-listener
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators %logs%
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" %logs%
  SET key=hkey_local_machine\system\currentcontrolset\services\w32time\parameters
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators %logs%
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" %logs%
  SET key=hkey_local_machine\system\currentcontrolset\services\w32time\timeproviders\ntpclient
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators %logs%
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" %logs%

  ECHO * block bad hosts ... %log%
  start "title" /b /wait "%~dp0block.cmd" %log%
  ECHO. %log%

  ECHO * configure windows update ... %log%
  SET key=hkey_local_machine\software\microsoft\windows\currentversion\windowsupdate\auto update
  reg add "%key%" /f /t reg_dword /v auoptions /d 2 %logs%
  reg add "%key%" /f /t reg_dword /v enablefeaturedsoftware /d 0 %logs%
  reg add "%key%" /f /t reg_dword /v includerecommendedupdates /d 0 %logs%
  ECHO. %log%

  ECHO * disable automated delivery of internet explorer ... %log%
  start "title" /b /wait "%~dp0disable7.cmd" . /B %logs%
  ECHO. %logs%
  start "title" /b /wait "%~dp0disable8.cmd" . /B %logs%
  ECHO. %logs%
  start "title" /b /wait "%~dp0disable9.cmd" . /B %logs%
  ECHO. %logs%
  start "title" /b /wait "%~dp0disable10.cmd" . /B %logs%
  ECHO. %logs%
  start "title" /b /wait "%~dp0disable11.cmd" . /B %logs%
  ECHO. %log%

  ECHO * disable ceip ... %log%
  SET key=hkey_local_machine\software\microsoft\sqmclient\windows
  reg add "%key%" /f /t reg_dword /v ceipenable /d 0 %logs%
  ECHO. %log%

  ECHO * disable gwx ... %log%
  tasklist 2>&1 | findstr /i gwx.exe >nul 2>&1 && taskkill /f /im gwx.exe /t %logs%
  tasklist 2>&1 | findstr /i gwxux.exe >nul 2>&1 && taskkill /f /im gwxux.exe /t %logs%
  SET key=hkey_local_machine\software\policies\microsoft\windows\gwx
  reg add "%key%" /f /t reg_dword /v disablegwx /d 1 %logs%
  ECHO. %log%

  ECHO * disable remote registry ... %log%
  sc query remoteregistry 2>&1 | findstr /i running >nul 2>&1 && net stop remoteregistry %logs%
  sc query remoteregistry >nul 2>&1 && sc config remoteregistry start= disabled %logs%
  ECHO. %log%

  ECHO * disable scheduled tasks ... %log%
  SET tn=\microsoft\windows\application experience\aitagent
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\application experience\microsoft compatibility appraiser
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\application experience\programdataupdater
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\autochk\proxy
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\customer experience improvement program\consolidator
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\customer experience improvement program\kernelceiptask
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\customer experience improvement program\usbceip
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\diskdiagnostic\microsoft-windows-diskdiagnosticdatacollector
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\maintenance\winsat
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\media center\activatewindowssearch
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\media center\configureinternettimeservice
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\media center\dispatchrecoverytasks
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\media center\ehdrminit
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\media center\installplayready
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\media center\mcupdate
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\media center\mediacenterrecoverytask
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\media center\objectstorerecoverytask
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\media center\ocuractivate
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\media center\ocurdiscovery
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\media center\pbdadiscovery
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\media center\pbdadiscoveryw1
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\media center\pbdadiscoveryw2
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\media center\pvrrecoverytask
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\media center\pvrscheduletask
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\media center\registersearch
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\media center\reindexsearchroot
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\media center\sqlliterecoverytask
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\media center\updaterecordpath
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\pi\sqm-tasks
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\power efficiency diagnostics\analyzeSystem
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\setup\gwx\refreshgwxconfigandcontent
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  SET tn=\microsoft\windows\windows error reporting\queuereporting
  schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" %logs%
  ECHO. %log%

  ECHO * disable skydrive ... %log%
  SET key=hkey_local_machine\software\policies\microsoft\windows\skydrive
  reg add "%key%" /f /t reg_dword /v disablefilesync /d 1 %logs%
  ECHO. %log%

  ECHO * disable spynet ... %log%
  SET key=hkey_local_machine\software\microsoft\windows defender\spynet
  reg add "%key%" /f /t reg_dword /v spynetreporting /d 0 %logs%
  reg add "%key%" /f /t reg_dword /v submitsamplesconsent /d 0 %logs%
  ECHO. %log%

  ECHO * disable telemetry ... %log%
  SET key=hkey_current_user\software\policies\microsoft\office\15.0\osm
  reg add "%key%" /f /t reg_dword /v enablelogging /d 0 %logs%
  reg add "%key%" /f /t reg_dword /v enablefileobfuscation /d 1 %logs%
  reg add "%key%" /f /t reg_dword /v enableupload /d 0 %logs%
  SET key=hkey_current_user\software\policies\microsoft\office\16.0\osm
  reg add "%key%" /f /t reg_dword /v enablelogging /d 0 %logs%
  reg add "%key%" /f /t reg_dword /v enablefileobfuscation /d 1 %logs%
  reg add "%key%" /f /t reg_dword /v enableupload /d 0 %logs%
  SET key=hkey_local_machine\software\policies\microsoft\windows\datacollection
  reg add "%key%" /f /t reg_dword /v allowtelemetry /d 0 %logs%
  SET key=hkey_local_machine\software\policies\microsoft\windows\scripteddiagnosticsprovider\policy
  reg add "%key%" /f /t reg_dword /v enablequeryremoteserver /d 0 %logs%
  ECHO. %log%

  ECHO * disable wifisense ... %log%
  SET key=hkey_local_machine\software\microsoft\wcmsvc\wifinetworkmanager
  reg add "%key%" /f /t reg_dword /v wifisensecredshared /d 0 %logs%
  reg add "%key%" /f /t reg_dword /v wifisenseopen /d 0 %logs%
  ECHO. %log%

  ECHO * disable windows 10 download ... %log%
  IF exist "%systemdrive%\$windows.~bt" "%~dp0%setacl%" -on "%systemdrive%\$windows.~bt" -ot file -actn setprot -op dacl:np;sacl:nc -rec cont_obj -actn setowner -ownr n:administrators %logs%
  IF exist "%systemdrive%\$windows.~bt" rmdir /q /s "%systemdrive%\$windows.~bt" %logs%
  mkdir "%systemdrive%\$windows.~bt" %logs%
  attrib +h "%systemdrive%\$windows.~bt" %logs%
  "%~dp0%setacl%" -on "%systemdrive%\$windows.~bt" -ot file -actn setprot -op dacl:p_nc;sacl:p_nc -rec cont_obj -actn setowner -ownr n:administrators %logs%
  ECHO. %log%

  ECHO * disable windows 10 upgrade ... %log%
  SET key=hkey_local_machine\software\policies\microsoft\windows\windowsupdate
  reg add "%key%" /f /t reg_dword /v disableosupgrade /d 1 %logs%
  ECHO. %log%

  ECHO * remove diagtrack ... %log%
  sc query diagtrack 2>&1 | findstr /i running >nul 2>&1 && net stop diagtrack %logs%
  sc query diagtrack >nul 2>&1 && sc delete diagtrack %logs%
  ECHO. %log%

  ECHO * sync time to pool.ntp.org ... %log%
  sc query w32time 2>&1 | findstr /i running >nul 2>&1 && net stop w32time %logs%
  SET key=hkey_local_machine\software\microsoft\windows\currentversion\datetime\servers
  reg query "%key%" >nul 2>&1 && reg delete "%key%" /f %logs%
  SET key=hkey_local_machine\system\currentcontrolset\services\w32time\timeproviders\ntpclient
  reg query "%key%" >nul 2>&1 && reg delete "%key%" /f /v specialpolltimeremaining %logs%
  w32tm /config /syncfromflags:manual /manualpeerlist:"0.pool.ntp.org 1.pool.ntp.org 2.pool.ntp.org 3.pool.ntp.org" %logs%
  SET key=hkey_local_machine\software\microsoft\windows\currentversion\datetime\servers
  reg add "%key%" /f /t reg_sz /d 0 %logs%
  reg add "%key%" /f /t reg_sz /v 0 /d 0.pool.ntp.org %logs%
  reg add "%key%" /f /t reg_sz /v 1 /d 1.pool.ntp.org %logs%
  reg add "%key%" /f /t reg_sz /v 2 /d 2.pool.ntp.org %logs%
  reg add "%key%" /f /t reg_sz /v 3 /d 3.pool.ntp.org %logs%
  SET key=hkey_local_machine\system\currentcontrolset\services\w32time\timeproviders\ntpclient
  reg add "%key%" /f /t reg_dword /v specialpollinterval /d 14400 %logs%
  sc config w32time start= auto %logs%
  net start w32time %logs%
  w32tm /resync %logs%
  ECHO. %log%

  ECHO * uninstall ^& hide updates (this may take a while, be patient) ... %log%
  powershell -executionpolicy bypass -file "%~dp0uninstall.ps1" %log%
  powershell -executionpolicy bypass -file "%~dp0hide.ps1" %log%
  sc query wuauserv 2>&1 | findstr /i running >nul 2>&1 && net stop wuauserv %logs%
  sc query bits 2>&1 | findstr /i running >nul 2>&1 && net stop bits %logs%
  net start bits %logs%
  net start wuauserv %logs%
  ECHO.
  GOTO end

:prompt
  SET /p yesno="* create system restore point? (y/n):  "
  ECHO.
  IF /i "%yesno:~,1%" equ "y" GOTO rpoint
  IF /i "%yesno:~,1%" equ "n" GOTO main
  GOTO prompt

:rpoint
  wmic.exe /namespace:\\root\default path systemrestore call createrestorepoint "ancile v1.18", 100, 12 %logs%
  IF %errorlevel% equ 0 GOTO main
  SET /p yesno=" !! error, failed to create system restore point. continue? (y/n):  "
  ECHO. %log%
  IF /i "%yesno:~,1%" equ "y" GOTO main
  IF /i "%yesno:~,1%" equ "n" GOTO end

:END
  ECHO [ see ancile.log for details - any key to EXIT ]
  ECHO.
  pause >nul
  ECHO [ end ancile v1.18 %date% %time% ] %logs%
  del /f /q "%~dp0_" >nul 2>&1
  EXIT
  
:ENDEND
pause