Modify Windows Firewall

ABOUT
Modify the Windows firewall with the IP addresses listed in "<ancile>\<data>\modify_winfirewall\"
These hosts will be dropped by the Windows firewall.

	
CONFIGURATION
The following options can be added to config.ini

	MODIFYWINFIREWALL (Boolean) - Create a firewall rule to block hosts
		Y	- Add or update rule to Windows firewall(DEFAULT).
		N	- Do not make any modifications to the Windows firewall.

		
NOTE
Disabling this plugin does not undo the changes made by its previous runs.


VERSION
1.0		Initial Creation