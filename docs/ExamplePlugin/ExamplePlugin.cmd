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

@REM Dependencies
@REM This script relies on Ancile to launch it so we need to check for that.
@REM You should also check for any other dependencies here as well.
IF NOT "%APPNAME%"=="Ancile" (
	ECHO ERROR: %PLUGINNAME% is meant to be launched by Ancile, and will not run as a stand alone script.
	ECHO Press any key to exit ...
	PAUSE >nul 2>&1
	EXIT
)

@REM Header
@REM The Header Briefly describe what we're running in the log and console to announce that the script has started.
@REM Plugins for Ancile should always announce that they have been started even when they are disabled.
ECHO [%DATE% %TIME%] BEGIN EXAMPLE PLUGIN >> "%LOGFILE%"
ECHO * Launching example plugin ...

@REM Begin
@REM Add a unique variable to determine if the script will be run.
@REM This will allow the user to enable and disable this script through the config.ini file.
@REM NOTE: Please ensure that this variable is unique. If you reuse variables used by other scripts, you could break that script or your own script.
@REM In this example the script will be run unless the user explicitly sets "ANCILEEXAMPLE" to "N" in "config.ini"
IF "%ANCILEEXAMPLE%"=="N" (
	@REM Script Disabled.
	@REM If the user has disabled this plugin, log that and move on
	ECHO Skipping Example Plugin using variable configured in config.ini >> "%LOGFILE%"
	ECHO   Skipping Example Plugin
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
	
	@REM Is this plugin specific to a version of Windows? You can check against the shell variable "OSVERSION" Provided by Ancile.
	@REM Windows 10 (10.0)
	@REM Windows 8.1 (6.3)
	@REM Windows 8 (6.2)
	@REM Windows 7 (6.1)
	@REM Windows Vista (6.0)
	IF "%OSVERSION%"=="6.1" ECHO You're running Windows 7 >> "%LOGFILE%"
	
	@REM The data directory is used to store script specific data.
	@REM When storing data for your script, you should place that data in "%DATADIR%\%PLUGINNAME%"
	TYPE "%DATADIR%\%PLUGINNAME%\datafile.txt" >> "%LOGFILE%" 2>&1
	
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

@REM Footer
@REM confirm that script has completed in log and console.
@REM Plugins for ancile should always announce that they have completed even when they are disabled.
ECHO [%DATE% %TIME%] END EXAMPLE PLUGIN >> "%LOGFILE%"
ECHO   DONE
