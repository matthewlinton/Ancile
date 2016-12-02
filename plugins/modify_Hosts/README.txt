Modify Hosts

ABOUT
Modify the hosts file by adding entries found in the data directory.
This plugin parses through list files located in "<Ancile>\<data>\modify_hosts\"
and adds a null route (default) to the hosts file for each unique host.


CONFIGURATION
The following options can be added to config.ini

	MODIFYHOSTS (Boolean) - Enable or disable Modification of the hosts file
		Y	- Add blocked hosts to the hosts file (DEFAULT).
		N	- Do not make any modifications to the hosts file.

	HOSTSREDIRECT (IP Address) - This is the IP address for redirecting domain names in the hosts file.
		If this is unset, the default value is 0.0.0.0

		
NOTE
Disabling this plugin does not undo the changes made by its previous runs.


VERSION
1.0		Initial Creation