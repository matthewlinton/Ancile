@REM disablewinx - Disable Windows 10 upgrade

@REM Disable the windows 10 download
  ECHO * disable windows 10 download ... %log%
  IF exist "%systemdrive%\$windows.~bt" "%~dp0%setacl%" -on "%systemdrive%\$windows.~bt" -ot file -actn setprot -op dacl:np;sacl:nc -rec cont_obj -actn setowner -ownr n:administrators %logs%
  IF exist "%systemdrive%\$windows.~bt" rmdir /q /s "%systemdrive%\$windows.~bt" %logs%
  mkdir "%systemdrive%\$windows.~bt" %logs%
  attrib +h "%systemdrive%\$windows.~bt" %logs%
  "%~dp0%setacl%" -on "%systemdrive%\$windows.~bt" -ot file -actn setprot -op dacl:p_nc;sacl:p_nc -rec cont_obj -actn setowner -ownr n:administrators %logs%
  ECHO. %log%

@REM Completely disable Windows 10 upgrade
  ECHO * disable windows 10 upgrade ... %log%
  SET key=hkey_local_machine\software\policies\microsoft\windows\windowsupdate
  reg add "%key%" /f /t reg_dword /v disableosupgrade /d 1 %logs%
  ECHO. %log%