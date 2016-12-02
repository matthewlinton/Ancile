Disable Tasks

ABOUT
Disable Tasks reads through the list files in its data direcory "<data>\disabletasks\"
and disables each task included.

	
CONFIGURATION
The following options can be added to config.ini

	DISABLETASKS (Boolean) - Enable or disable the Disable Tasks plugin
		Y	- Enable the Disable Tasks Plugin (DEFAULT).
		N	- Disable the Disable Tasks Plugin.



DETAILS
* Disable tasks disables all tasks listed in its data directory "<data>\disabletasks\"

NOTE
Configuration files in the data directory must end in a blank line.
If you do not include a blank line, the first item in the next file may get mangled.

VERSION
1.0		Initial Creation