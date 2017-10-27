# Ancile Official Release(https://bitbucket.org/ancile_development/ancile/downloads/)
Ancile for Windows attempts to block all Windows spying and unwanted upgrades.

For more information go to https://voat.co/v/ancile

## Features
*  Sync Windows time with ntp.org
*  Block unwanted hosts using the Windows hosts file, routing table, and firewall
*  Change windows update to check/notify (do not download/install) or disable it entirely
*  Disable automatic delivery of Internet explorer via windows update
*  Disable CEIP/GWX/SkyDrive(aka OneDrive)/SpyNet/Telemetry/WiFi Sense
*  Disable remote registry
*  Disable unwanted scheduled tasks
*  Disable unwanted services
*  Disable the Windows 10 forced update
*  Remove Microsoft's diagnostics tracking
*  Hide/Uninstall unwanted Windows updates
*  Add 3rd party plug-ins

## Instructions
Ancile does not require installation and can be run directly from within it's parent folder.

1. Download the latest version (https://bitbucket.org/matthewlinton/ancile/downloads).
1. Unzip the archive.
1. Navigate to the Ancile directory.
1. Right click on "ancile.cmd"
1. Select "Run as Administrator" from the menu
1. Follow the on screen instructions

## Configuration
### Configuration File
Some aspects of Ancile can be configured using the "config.ini" file in the root directory. This allows you to customize some of Ancile's behavior. All Ancile configuration options are outlined within the config file itself.

Some plugins also have configuration options. See the "README.md" file contained in the individual plugin directories for more information.

### Data Folder
The data folder contains various configuration information for Ancile and its plugins. You can modify the behavior of some of these by adding or removing the correct configuration options within the data folders. For each script, see the "README.md" files for each plugin for more information.

**WARNING:** Incorrect modifications to any of these files may break Ancile and could potentially damage your system. Do not make any modifications to these files or folders unless you know what you're doing.

### Plugins
Almost all of Ancile's functionality is created by adding plugins. THe goal of the default collection of plugins is to stop Windows Telemetry spying, but Ancile can be enhanced by adding third party plugins.

Users can create their own plugins for Ancile. See "https://bitbucket.org/ancile_development/ancileplugin_example" for more information on plugins.

## License
This code is not covered under any license. You are welcome to modify and share this code as you please.

## Liability
Use Ancile at your own risk!

Ancile, to the best of my knowledge, does not contain any harmful or malicious code. I assume no liability for any issues that may occur from the use of this software. Please take the time to understand how this code will interact with your system before using it.

## Resources
Ancile and it's plugins may use various third party resources to function. For more information, please review the readme documents that are located in the "docs" directory.

## Feedback
Please direct all feedback to the Voat subverse (https://voat.co/v/ancile/).

If you find a bug, please take the time to report it (https://bitbucket.org/matthewlinton/ancile/).

## Thanks
### A special thanks to everyone that helped to improve Ancile
#### Partners
bl0ck0ut, Ilja, Mixplate, Scalar

#### Contributors
aekotra, HeavyBeefCurtain, Jean Belga, Linda Meyer, marineIguana, Markus, noxxius88, Sam, TiagoTiago, ucantdothatontvew

### Thank you to everyone that helped create Aegis-voat
#### Creators
th3power

#### Contributors
alexzerg11, allockse, AxiomBreak, elixxx, erskine, eSh, GGLapkizzz, ilikeskittles, liquidinsects, Magoo204, Mixplate, mythias, PaulDG, pstein, RypeDub420, spexdi, tor11, Umrtvovacz, qzxq, thequestion, tor11, tr3bg0d, Voluptuous_Panda, and Zaphain.