:: original concept by shawn brink http://www.sevenforums.com/member.php?u=47
:: tutorial http://www.sevenforums.com/tutorials/91738-windows-update-reset.html
:: modified by https://voat.co/u/thepower for use in aegis v1.17+

@echo off
set log=^> ^%~dp0_ ^&^& type ^%~dp0_ ^&^& type ^%~dp0_ ^>^>^%~dpn0.log 2^>^&1
set logs=^>^>^%~dpn0.log 2^>^&1

goto begin

:begin
  echo [ begin repairwindowsupdate.cmd %date% %time% ] >"%~dpn0.log" 2>&1
  echo. %log%

  net session >nul 2>&1
  if %errorlevel% neq 0 (
    echo !! error, this script must be run as an administrator. press any key to exit ... %log%
    echo. %log%
    goto end
  ) else (
    goto prompt
  )

:end
  echo [ see repairwindowsupdate.log for details - any key to exit ]
  echo.
  pause >nul
  echo [ end repairtimeservice.cmd %date% %time% ] %logs%
  del /f /q "%~dp0_" >nul 2>&1
  exit

:main
  echo * stop services ... %log%
  sc query appidsvc 2>&1 | findstr /i running >nul 2>&1 && net stop appidsvc %logs%
  sc query cryptsvc 2>&1 | findstr /i running >nul 2>&1 && net stop cryptsvc %logs%
  sc query wuauserv 2>&1 | findstr /i running >nul 2>&1 && net stop wuauserv %logs%
  sc query bits 2>&1 | findstr /i running >nul 2>&1 && net stop bits %logs%
  echo.

  echo * delete existing windows update data files ... %log%
  set file=%allusersprofile%\application data\microsoft\network\downloader\qmgr*.dat
  if exist "%file%" del /f /q /s "%file%" %logs%
  set file=%systemroot%\windowsupdate.log
  if exist "%file%" del /f /q /s "%file%" %logs%
  set file=%systemroot%\winsxs\pending.xml
  if exist "%file%" del /f /q /s "%file%" %logs%
  set dir=%systemroot%\softwaredistribution
  if exist "%dir%" rmdir /q /s "%dir%"
  set dir=%systemroot%\system32\catroot2
  if exist "%dir%" rmdir /q /s "%dir%"
  echo. %log%

  echo * fix permissions ... %log%
  sc.exe sdset bits D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCLCSWLOCRRC;;;AU)(A;;CCLCSWRPWPDTLOCRRC;;;PU) %logs%
  sc.exe sdset wuauserv D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCLCSWLOCRRC;;;AU)(A;;CCLCSWRPWPDTLOCRRC;;;PU) %logs%
  echo. %log%

  echo * re-register dll files ... %log%
  regsvr32.exe /s atl.dll %logs%
  regsvr32.exe /s urlmon.dll %logs%
  regsvr32.exe /s mshtml.dll %logs%
  regsvr32.exe /s shdocvw.dll %logs%
  regsvr32.exe /s browseui.dll %logs%
  regsvr32.exe /s jscript.dll %logs%
  regsvr32.exe /s vbscript.dll %logs%
  regsvr32.exe /s scrrun.dll %logs%
  regsvr32.exe /s msxml.dll %logs%
  regsvr32.exe /s msxml3.dll %logs%
  regsvr32.exe /s msxml6.dll %logs%
  regsvr32.exe /s actxprxy.dll %logs%
  regsvr32.exe /s softpub.dll %logs%
  regsvr32.exe /s wintrust.dll %logs%
  regsvr32.exe /s dssenh.dll %logs%
  regsvr32.exe /s rsaenh.dll %logs%
  regsvr32.exe /s gpkcsp.dll %logs%
  regsvr32.exe /s sccbase.dll %logs%
  regsvr32.exe /s slbcsp.dll %logs%
  regsvr32.exe /s cryptdlg.dll %logs%
  regsvr32.exe /s oleaut32.dll %logs%
  regsvr32.exe /s ole32.dll %logs%
  regsvr32.exe /s shell32.dll %logs%
  regsvr32.exe /s initpki.dll %logs%
  regsvr32.exe /s wuapi.dll %logs%
  regsvr32.exe /s wuaueng.dll %logs%
  regsvr32.exe /s wuaueng1.dll %logs%
  regsvr32.exe /s wucltui.dll %logs%
  regsvr32.exe /s wups.dll %logs%
  regsvr32.exe /s wups2.dll %logs%
  regsvr32.exe /s wuweb.dll %logs%
  regsvr32.exe /s qmgr.dll %logs%
  regsvr32.exe /s qmgrprxy.dll %logs%
  regsvr32.exe /s wucltux.dll %logs%
  regsvr32.exe /s muweb.dll %logs%
  regsvr32.exe /s wuwebv.dll %logs%
  regsvr32 /s wudriver.dll %logs%
  echo. %log%

  echo * start services ... %log%
  net start bits %logs%
  net start wuauserv %logs%
  net start cryptsvc %logs%
  net start appidsvc %logs%
  echo.

  echo * reset bits ... %log%
  bitsadmin.exe /reset /allusers %logs%
  echo. %log%

  goto end

:prompt
  set /p yesno="* create system restore point? (y/n):  "
  echo.
  if /i "%yesno:~,1%" equ "y" goto rpoint
  if /i "%yesno:~,1%" equ "n" goto main
  goto prompt

:rpoint
  wmic.exe /namespace:\\root\default path systemrestore call createrestorepoint "repairwindowsupdate.cmd", 100, 12 %logs%
  if %errorlevel% equ 0 goto main
  set /p yesno=" !! error, failed to create system restore point. continue? (y/n):  "
  echo. %log%
  if /i "%yesno:~,1%" equ "y" goto main
  if /i "%yesno:~,1%" equ "n" goto end
