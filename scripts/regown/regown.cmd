@REM regOwn - Set the owner for registry keys to the administarator

KEYFILE=regkeys.txt

SET key=hkey_current_user\software\policies\microsoft\office\15.0\osm
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators %logs%
  reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" %logs%
