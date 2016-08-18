# Ancile
Ancile for Windows 7/8x attempts to block all windows spying and unwanted upgrades.
This is a fork of Aegis-voat (https://github.com/th3power/aegis-voat) created by th3power.

## Instructions
Ancile does not require instalation.

1. Download the latest version.
1. Unzip the archive.
1. Navigate to the Ancile directory.
1. Right click on "ancile.cmd"
1. Select "Run as Administrator" from the menu
1. Follow the onscreen instructions

## Features
### Overview
*  Block 197 bad hosts.
*  Change windows update to check/notify (do not download/install).
*  Disable automatic delivery of internet explorer via windows update.
*  Disable ceip/gwx/skydrive(aka onedrive)/spynet/telemetry/wifisense.
*  Disable remote registry.
*  Disable 31 scheduled tasks.
*  Disable windows 10 download directory*
*  Remove diagtrack.
*  Sync time to ntp.org.
*  Hide/Uninstall 51 KB updates.

### Block Bad Hosts
### Internet Explorer
Some updates which may contain critical security patches for ie, as well as automated delivery of ie and related updates, will be blocked. Due to the obvious security risk posed by running an unpatched browser we strongly advise to uninstall ie. If you plan to continue to use ie you should probably not run this script - or manually patch and do so at your own risk.

### Uninstall Windows Update
This script will not block Windows Update however it will change your Windows Update settings to 'check/notify but do not download/install'. If you have problems getting Windows Update to work properly after running the script you may need to run the Windows Update Troubleshooter or the System Update Readiness Tool. If you have recently installed updates and have not yet rebooted you should reboot before running the script. If you are on a fresh install you may want to install all updates before running Aegis for the first time, otherwise it may take a long time to update.

####KB update	description

* KB971033	update for windows activation technologies
* KB2882822	update for adding itracerelogger interface support
* KB2902907	description not available, update was pulled by microsoft
* KB2922324	description not available, update was pulled by microsoft
* KB2952664	update for upgrading windows 7
* KB2976978	update for windows 8.1 and windows 8
* KB2977759	update for windows 7 rtm
* KB2990214	update that enables you to upgrade from windows 7 to a later version of windows
* KB3012973	upgrade to windows 10
* KB3014460	update for windows insider preview / upgrade to windows 10
* KB3015249	update that adds telemetry points to consent.exe in Windows 8.1 and Windows 7
* KB3021917	update for windows 7 sp1 for performance improvements
* KB3022345	update for customer experience and diagnostic telemetry
* KB3035583	update installs get windows 10 app in windows 8.1 and windows 7 sp1
* KB3042058	update for cipher suite priority order (contains winlogon spying elements)
* KB3044374	update that enables you to upgrade from windows 8.1 to windows 10
* KB3046480	update for migrating .net when upgrading to later version of windows
* KB3058168	update activate windows 10 from windows 8 or windows 8.1, and windows server 2012 or windows server 2012 r2 kms hosts
* KB3064683	update for windows 8.1 oobe modifications to reserve windows 10
* KB3065987	update for windows update client for windows 7 and windows server 2008 r2 july 2015
* KB3065988	update for windows update client for windows 8.1 and windows server 2012 r2 july 2015
* KB3068708	update for customer experience and diagnostic telemetry
* KB3072318	update for windows 8.1 oobe modifications to reserve windows 10
* KB3074677	compatibility update for upgrading to windows 10
* KB3075249	update that adds telemetry points to consent.exe in windows 8.1 and windows 7
* KB3075851	update for windows update client for windows 7 and windows server 2008 r2 august 2015
* KB3075853	update for windows update client for windows 8.1 and windows server 2012 r2 august 2015
* KB3080149	update for customer experience and diagnostic telemetry
* KB3081437	august 18, 2015, compatibility update for upgrading to windows 10
* KB3081454	september 8, 2015, compatibility update for upgrading to windows 10
* KB3081954	update for work folders improvements in windows 7 sp1 (contains telemetry elements)
* KB3083324	update for windows update client for windows 7 and windows server 2008 r2 september 2015
* KB3083325	update for windows update client for windows 8.1 and windows server 2012 r2 september 2015
* KB3083710	update for windows update client for windows 7 and windows server 2008 r2 october 2015
* KB3083711	update for windows update client for windows 8.1 and windows server 2012 r2 october 2015
* KB3086255	september 8, 2015, security update for the graphics component in windows (breaks safedisc)
* KB3088195	october 13, 2015, security update for windows kernel (reported to contain a keylogger)
* KB3090045	windows update for reserved devices in windows 8.1 or windows 7 sp1 (windows 10 upgrade elements)
* KB3093983	security update for internet explorer: october 13, 2015 (ie spying elements)
* KB3102810	windows 10 upgrade elements
* KB3102812	windows 10 upgrade elements
* KB3112343	update for windows update client for windows 7 and windows server 2008 r2 december 2015
* KB3112336	update for windows update client for windows 8.1 and windows server 2012 r2 december 2015
* KB3123862	updated capabilities to upgrade windows 8.1 and windows 7
* KB3135445	windows update client for windows 7 and windows server 2008 r2: february 2016
* KB3135449	windows update client for windows 8.1 and windows server 2012 r2: february 2016
* KB3138612	windows update client for windows 7 and windows server 2008 r2: march 2016
* KB3138615	windows update client for windows 8.1 and windows server 2012 r2: march 2016
* KB3139929	security update for internet explorer: march 8, 2016
* KB3146449	updated internet explorer 11 capabilities to upgrade windows 8.1 and windows 7
* KB3150513	may 2016 compatibility update for windows

## License
There is no official license - you are welcome to modify and share my code and you do not have to give me credit. I do appreciate any feedback and I will give you credit if I use your ideas. This script is the product of a collaborate effort and does not belong to any one person.

## Liability
All code except sed and setacl is provided as open source so you can look and see for yourself what it does. It has been thoroughly tested on my own systems and scanned on VirusTotal and to the best of my knowledge it does not contain any harmful or malicious elements. However I assume no liability for any problems so use it at your own risk.

## Resources
Ancile uses the folowing ouside resources to perform specific tasks.

### GnuWin
GnuWin (http://gnuwin32.sourceforge.net/) provides ports of tools with a GNU or similar open source license, to modern MS-Windows (Microsoft Windows 2000 / XP / 2003 / Vista / 2008 / 7)
* sed.exe (http://gnuwin32.sourceforge.net/packages/sed.htm)

### Other
* setacl-**.exe (https://helgeklein.com/setacl/)

## Thanks
### A special thanks to everyone that helped to improve Ancile

### Thank you to everyone that helped create Aegis-voat
#### Creators
@th3power

#### Contributors
@alexzerg11, @allockse, @AxiomBreak, @elixxx, @erskine, @eSh, @GGLapkizzz, @ilikeskittles, @liquidinsects, @Magoo204, @Mixplate, @mythias, @PaulDG, @pstein, @RypeDub420, @spexdi, @tor11, @Umrtvovacz, @qzxq, @thequestion, @tor11, @tr3bg0d, @Umrtvovacz, @Voluptuous_Panda, and @Zaphain.