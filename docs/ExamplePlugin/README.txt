Example Plugin

ABOUT
The Example Plugin is a skeleton framework for designing your own Ancile plugin.
When creating your own plugin, Ancile will run the script that has the same 
name as its parent directory.

	e.g. exampleplugin\exampleplugin.cmd

	
CONFIGURATION
The following options can be added to config.ini

	EXAMPLEPLUGIN (Boolean) - Enable or disable the example plugin
		Y	- Enable the Example Plugin (DEFAULT).
		N	- Disable the Example Plugin.

It may also be necessary to store script specific data for each plugin.
When storing script specific data, it is preffered that you create a sub 
directory in the data directory provided by ancile. Scripts can access the 
location of the data directory through the shell variable "DATADIR".

DETAILS
* Example Plugin creates a temporary directory. This directory is deleted at 
  script completion.

NOTE
By default the Example Plugin has a jump statement that completely bypasses the 
entire script. You will need to remove this jump if you copy the Example Plugin 
when creating your plugin.

VERSION
1.0		Initial Creation