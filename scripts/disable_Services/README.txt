Disable Services

ABOUT
Disable Services parses the list files located in "<script>\disable_services\"
and disables any services listed there. Optionally, services with the keyword 
"DELETE" will be deleted.

	
CONFIGURATION
The following options can be added to config.ini

	DISABLESERVICES (Boolean) - Enable or disable the Disable Services plugin
		Y	- Enable the Disable Services plugin (DEFAULT).
		N	- Disable the Disable Services plugin.


DETAILS
* Disable Services sets the "Disabled" flag for each service.

* Optionally, services with the keyword "DELETE" will be deleted.

NOTE
Disabling Disable Services will not revert the changes made by Disable Services in previous runs

VERSION
1.0		Initial Creation