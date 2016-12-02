Modify Routing

ABOUT
Modify the routing table with the IP addresses listed in "<ancile>\<data>\modify_routing\"
These hosts will be null routed by the Windows routing table.


CONFIGURATION
The following options can be added to config.ini

	MODIFYROUTES (Boolean) - Modify the routing table
		Y	- Add blocked IP addresses to the routing table (DEFAULT).
		N	- Do not make any modifications to the routing table.

	ROUTSREDIRECT (IP Address) - This is the gateway address for redirecting IPs in the routing table.
		If this is unset, the default value is 0.0.0.0


NOTE
Disabling this plugin does not undo the changes made by its previous runs.


VERSION
1.0		Initial Creation