@ECHO OFF
@REM Ancile Release - This script builds a custom Ancile release
@REM 				This script requires that git be installed.

SETLOCAL

@REM Configuration. 
SET SCRIPTNAME=AncileRelease
SET SCRIPTVERSION=1.0
SET GITDIR=

@REM Make sure the path variable contians everything we need
SET PATH=%PATH%;%SYSTEMROOT%;%SYSTEMROOT%\system32;%SYSTEMROOT%\System32\Wbem;%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\

SET CURRDIR=%~dp0

@REM Dependencies

@REM Fetch Ancile Core
ECHO The Windows version of this script is not yet functional. please use the Linux/CygWin version.


@REM Fetc plugins from the plugin list

@REM add Configuration options in config.ini

ENDLOCAL

PAUSE