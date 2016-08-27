<#
.notes 
  * Original author mark berry (c) 2015 mcb systems all rights reserved free for personal or commercial use may not be sold
  * Modified for use in aegis v1.14+ by https://voat.co/u/thepower on 02.23.2016
  * Modified for use in Ancile by Matthew Linton (https://bitbucket.org/matthewlinton/ancile) 2016-08-25
#>
param([string]$kbnumber=000000)

$x=0
$updatesession = new-object -comobject microsoft.update.session
$updatesearcher = $updatesession.createupdatesearcher()
$updatesearcher.includepotentiallysupersededupdates = $true
$searchresult = $updatesearcher.search("isinstalled=0")

[boolean]$kblisted = $false
foreach ($update in $searchresult.updates) {
	foreach ($kbarticleid in $update.kbarticleids) {
		if ($kbarticleid -eq $kbnumber) {
			$kblisted = $true
			if ($update.ishidden -eq $false) {
				$x=1
				"Hiding kb$kbnumber"
				$update.ishidden = $true
			}
		}
	}
}
if ($x -eq 0) {
	"KB$kbnumber does not need to be hidden"
}

$objautoupdatesettings = (new-object -comobject "microsoft.update.autoupdate").settings
$objsysinfo = new-object -comobject "microsoft.update.systeminfo"

if ($objSysInfo.RebootRequired) {
	"A reboot is required to complete some operations"
}
