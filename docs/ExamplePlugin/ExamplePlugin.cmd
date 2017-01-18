@REM ExamplePlugin - This is a example plugin for Ancile.
@REM Below is an example skeleton for writing an Ancile plugin.

@REM Configuration.
@REM Every script should have a script configuration with PLUGINNAME, PLUGINVERSION, PLUGINDIR.
@REM You might also want to add any other global configuration variables here.
SET PLUGINNAME=ExamplePlugin
SET PLUGINVERSION=1.1
@REM If you want to call sub-scripts from your main script, you will need to include the full path.
@REM Ancile provides the shell variable "SCRIPTDIR" which is the path to the scripts directory.
SET PLUGINDIR=%SCRIPTDIR%\%PLUGINNAME%

@REM Dependencies:Ancile
@REM This script relies on Ancile to launch it so we need to check for that.
@REM You should also check for any other dependencies here as well.
IF NOT "%APPNAME%"=="Ancile" (
	ECHO ERROR: %PLUGINNAME% is meant to be launched by Ancile, and will not run as a stand alone script.
	ECHO Press any key to exit ...
	PAUSE >nul 2>&1
	EXIT
)

@REM Dependencies:Services
@REM Do you need to check if other services are running, or if a program exists?
@REM If something is missing or disabled you should gracefully cancel the script,
@REM and provide extra user and logging information.
@REM This will set variables to cause the script to exit because a service is missing.
SET servicerunning=1
sc query service 2>&1 | findstr /I RUNNING >nul 2>&1 && SET ANCILEEXAMPLE=N
sc query service 2>&1 | findstr /I RUNNING >nul 2>&1 && SET servicerunning=0

@REM Header
@REM The Header Briefly describe what we're running in the log and console to announce that the script has started.
@REM Plugins for Ancile should always announce that they have been started even when they are disabled.
ECHO [%DATE% %TIME%] BEGIN EXAMPLE PLUGIN >> "%LOGFILE%"
ECHO * Launching example plugin ...

@REM Enable Delayed Expansion
@REM If you're going to be changing variables inside the main body of your script, you'll need to Enable Delayed Expansion.
@REM Delayed Expansion will cause variables to be expanded at execution time rather than at parse time.
@REM An example of when you will need this is below in the "Script Main" section.
Setlocal EnableDelayedExpansion

@REM Begin
@REM Add a unique variable to determine if the script will be run.
@REM This will allow the user to enable and disable this script through the config.ini file.
@REM NOTE: Please ensure that this variable is unique. If you reuse variables used by other scripts, you could break that script or your own script.
@REM In this example the script will be run unless the user explicitly sets "ANCILEEXAMPLE" to "N" in "config.ini"
IF "%ANCILEEXAMPLE%"=="N" (
	@REM Script Disabled.
	
	@REM If we've caught something like a disabled service (above). We'll want to log that extra information.
	IF %servicerunning% EQU 0 (
		ECHO A necessary service has been disabled >> "%LOGFILE%"
		ECHO   A necessary service has been disabled
	)
	
	@REM If the user has disabled this plugin, log that and move on
	ECHO Skipping %PLUGINNAME% (%PLUGINVERSION%) using variable configured in config.ini >> "%LOGFILE%"
	ECHO   Skipping %PLUGINNAME% (%PLUGINVERSION%)
) ELSE (
	@REM Is this plugin specific to a version of Windows?
	@REM You can check against the shell variable "OSVERSION" Provided by Ancile.
	@REM Windows 10, Server 2016		(10.0)
	@REM Windows 8.1, Server 2012 R2	(6.3)
	@REM Windows 8, Server 2012			(6.2)
	@REM Windows 7, Server 2008 R2		(6.1)
	@REM Windows Vista, Server 2008		(6.0)
	SET oscheck=0
	IF "%OSVERSION%"=="6.3" SET oscheck=1
	IF "%OSVERSION%"=="6.2" SET oscheck=1
	IF "%OSVERSION%"=="6.1" SET oscheck=1
	IF !oscheck! EQU 0 (
		ECHO %PLUGINNAME% %PLUGINVERSION% can only be run unders Windows 7, 8, or 8.1 >> "%LOGFILE%"
		ECHO   Skipping %PLUGINNAME% OS not supported
	) ELSE (
		@REM Script Main.
		@REM This is the main body of the plugin. All the working code goes here.
		@REM Ancile Plugins are Windows Batch scrips. Everything that you can do with a batch script you can do here.
		ECHO   Running Example Plugin
		
		@REM Debugging. Include Extra Debugging information if debugging is enabled. This can also be helpful in reducing log clutter when running commands.
		@REM Ancile Provides the shell varable "DEBUG" to enable and disable debug logging.
		IF "%DEBUG%"=="Y" (
			@REM Add extra information to the log file. Ancile Provides the shell variable "LOGFILE".
			ECHO "%PLUGINNAME% (%PLUGINVERSION%)" >> "%LOGFILE%"
			ECHO "%PLUGINDIR%" >> "%LOGFILE%"
		)
		
		@REM Do you need to store temporary information for your script? Create a temporary directory.
		@REM Ancile Provides the shell variable "TEMPDIR" which points to the preferred temp directory.
		@REM It's standard practice to log both stdout and stderr to the log file. This keeps the Ancile output uncluttered.
		IF NOT EXIST "%TEMPDIR%\%PLUGINNAME%" MKDIR "%TEMPDIR%\%PLUGINNAME%" >> "%LOGFILE%" 2>&1
		
		@REM The data directory is used to store script specific data.
		@REM When storing data for your script, you should place that data in "%DATADIR%\%PLUGINNAME%"
		TYPE "%DATADIR%\%PLUGINNAME%\datafile.txt" >> "%LOGFILE%" 2>&1
		
		@REM Here's an example of when we need "EnableDelayedExpansion"
		@REM We've set a variable inside the IF statement. If we don't use this special access method, the variable
		@REM won't be set at runtime (When we run the script).
		@REM Note that delayed variables use "!" insted of "%" when we access their contents.
		SET temporaryvariable=echo this
		ECHO !temporaryvariable! to the log file >> "%LOGFILE%"
		
		
		@REM The Library directory is used for including binaries that may be used by multiple scripts.
		@REM You can access these binaries using the "LIBDIR" shell variable set up by Ancile.
		@REM The following command will log an error as "testing.exe" doesn't exist.
		CALL "%LIBDIR%\testing.exe" >> "%LOGFILE%" 2>&1
		@REM Ancile version 1.8 and later add the Library directory to your path.
		@REM This means that you can launch Ancile commands without having to include "%LIBDIR%"
		CALL testing.exe >> "%LOGFILE%" 2>&1
		@REM You may want to check if the above command produced any errors.
		@REM You can do this by checking the system variable "ERRORLEVEL"
		@REM If there's an error, update the Ancile error counter.
		IF %ERRORLEVEL% neq 0 SET /A ANCERRLVL=ANCERRLVL+1
		@REM NOTE: Not all commands will set an error level. You will want to make sure that the command you are using
		@REM sets this correctly, or you may not get the behavior you're expecting.
		
		@REM Do you need to run a sub script that you've included with your plugin?
		IF EXIST "%PLUGINDIR%\examplesubscript.cmd" (
			@REM Run an external script that you've included with your plugin.
			CALL "%PLUGINDIR%\examplesubscript.cmd"
		) ELSE (
			@REM Log any critical failures reguardless of debug status
			ECHO "%PLUGINDIR%\examplesubscript.cmd" does not exist >> "%LOGFILE%"
			@REM Incriment the Ancile Error level. This will let the Ancile and user know that something went wrong.
			@REM Ancile provides the shell variable "ANCERRLVL" to count the number of errors encountered
			SET /A ANCERRLVL=ANCERRLVL+1
		)
		
		@REM Don't forget to clean up after yourself.
		DEL /F /Q "%TEMPDIR%\%PLUGINNAME%" >> "%LOGFILE%" 2>&1
	)
)

@REM Disable Delayed Expansion
@REM If you Enabled Delayed Expansion above, don't forget to Disable Delayed Expansion.
Setlocal DisableDelayedExpansion

@REM Footer
@REM confirm that script has completed in log and console.
@REM Plugins for ancile should always announce that they have completed even when they are disabled.
ECHO [%DATE% %TIME%] END EXAMPLE PLUGIN >> "%LOGFILE%"
ECHO   DONE
