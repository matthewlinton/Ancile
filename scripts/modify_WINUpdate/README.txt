Modify Windows Update

ABOUT
This will modify enable or disable the Windows Update service based on the 
settings below.

	
CONFIGURATION
The following options can be added to config.ini

	MODIFYWINUPDATE (Boolean) - Disable modification of the Windows Update Service
		Y	- Switch Windows Update to check and notify but do not download (DEFAULT).
		N	- Do not change Windows Update Behavior.

	DISABLEWINUPDATE (Boolean) - If MODWINUPDATE is enabled, enable or disable Windows Update.
		Y	- Disable Windows Update service.
		N	- Enable Windows Update service (DEFAULT).

		
DETAILS
* The default configuration will modify Windows update will set Windows update 
  to check for new updates, but not download or install untill the user 
  manually performes a Windows update.
  
* Setting "DISABLEWINUPDATE" to "Y" will completely disable Windows Update.

NOTE
By default the Example Plugin has a jump statement that completely bypasses the 
entire script. You will need to remove this jump if you copy the Example Plugin 
when creating your plugin.

VERSION
1.0		Initial Creation