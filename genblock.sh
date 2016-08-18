#!/bin/bash

# store list of hosts to block in array h
h=(
'0.r.msn.com'
'a.ads1.msn.com'
'a.ads2.msn.com'
'a.rad.msn.com'
'ac3.msn.com'
'act-3-blu.mesh.com'
'activesync.glbdns2.microsoft.com'
'ad.doubleclick.net'
'ads.eu.msn.com'
'ads.msn.com'
'ads.msn.com.nsatc.net'
'ads1.msads.net'
'ads1.msn.com'
'ads2.msn.com'
'ads2.msn.com.c.footprint.net'
'adsmockarc.azurewebsites.net'
'adsyndication.msn.com'
'aidps.atdmt.com'
'aidps.msn.com.nsatc.net'
'aka-cdn-ns.adtech.de'
'analytics.live.com'
'analytics.microsoft.com'
'analytics.msn.com'
'analytics.msnbc.msn.com'
'analytics.r.msn.com'
'appexmapsappupdate.blob.core.windows.net'
'arc2.msn.com'
'arc3.msn.com'
'arc9.msn.com'
'atlas.c10r.facebook.com'
'b.ads1.msn.com'
'b.rad.msn.com'
'bat.bing.com'
'bingads.microsoft.com'
'bl3302.storage.skyprod.akadns.net'
'blu.mobileads.msn.com'
'bn1-2cd.wns.windows.com'
'bn1cd.wns.windows.com'
'bn1wns2011508.wns.windows.com'
'bn2wns1.wns.windows.com'
'bn2wns1b.wns.windows.com'
'bs.eyeblaster.akadns.net'
'bs.serving-sys.com'
'c.atdmt.com'
'c.atdmt.com.nsatc.net'
'c.bing.com'
'c.microsoft.com'
'c.msn.com'
'c.msn.com.nsatc.net'
'c.ninemsn.com.au'
'c.no.msn.com'
'c1.microsoft.com'
'cdn.atdmt.com'
'cdn.content.prod.cms.msn.com'
'cds26.ams9.msecn.net'
'choice.microsoft.com'
'choice.microsoft.com.nsatc.net'
'cmsresources.windowsphone.com'
'col.mobileads.msn.com'
'compatexchange.cloudapp.net'
'content.windows.microsoft.com'
'corp.sts.microsoft.com'
'corpext.msitadfs.glbdns2.microsoft.com'
'cs1.wpc.v0cdn.net'
'dart.l.doubleclick.net'
'db3aqu.atdmt.com'
'dc.services.visualstudio.com'
'dev.virtualearth.net'
'df.telemetry.microsoft.com'
'diagnostics.support.microsoft.akadns.net'
'diagnostics.support.microsoft.com'
'digg.analytics.live.com'
'directory.services.live.com.akadns.net'
'displaycatalog.md.mp.microsoft.com'
'dl.delivery.mp.microsoft.com'
'dmd.metaservices.microsoft.com'
#'dns.msftncsi.com'
'download-ssl.msgamestudios.com'
'ecn.dev.virtualearth.net'
'en-us.appex-rf.msn.com'
'fe2.update.microsoft.com.akadns.net'
'fe3.delivery.dsp.mp.microsoft.com.nsatc.net'
'fe3.delivery.mp.microsoft.com'
'feedback.microsoft-hohm.com'
'feedback.search.microsoft.com'
'feedback.windows.com'
'fesweb1.ch1d.binginternal.com'
'ff4a487e56259f4bd5831e9e30470e83.azr.msnetworkanalytics.testanalytics.net'
'flex.msn.com'
'flex.msn.com.nsatc.net'
'g.msn.com'
'g.msn.com.nsatc.net'
'geo-prod.do.dsp.mp.microsoft.com'
'global.msads.net.c.footprint.net'
'h1.msn.com'
'h2.msn.com'
'help.bingads.microsoft.com'
'i1.services.social.microsoft.com'
'i1.services.social.microsoft.com.nsatc.net'
'inference.location.live.net'
'js.microsoft.com'
'lb1.www.ms.akadns.net'
'licensing.md.mp.microsoft.com'
'live.rads.msn.com'
'livetileedge.dsx.mp.microsoft.com'
'logging.windows.microsoft.com'
'm.adnxs.com'
'm.anycast.adnxs.com'
'mediadiscovery.microsoft.com'
'microsoft-hohm.com'
#'msftncsi.com'
'msnportal.112.2o7.net'
'msntest.serving-sys.com'
'oca.telemetry.microsoft.com'
'oca.telemetry.microsoft.com.nsatc.net'
'onesettings-bn2.metron.live.com.nsatc.net'
'onesettings-cy2.metron.live.com.nsatc.net'
'onesettings-db5.metron.live.com.nsatc.net'
'onesettings-hk2.metron.live.com.nsatc.net'
'otf.msn.com'
'popup.msn.com'
'pre.footprintpredict.com'
'rad.live.com'
'rad.msn.com'
'rad.msn.com.nsatc.net'
'redir.metaservices.microsoft.com'
'reports.wes.df.telemetry.microsoft.com'
'rmads.eu.msn.com'
'rmads.msn.com'
'rpt.rad.msn.com'
'sb.scorecardresearch.com'
'schemas.microsoft.akadns.net'
'secure.adnxs.com'
'secure.anycast.adnxs.com'
'secure.flashtalking.com'
'services.wes.df.telemetry.microsoft.com'
'settings.data.microsoft.com'
'settings-sandbox.data.glbdns2.microsoft.com'
'settings-sandbox.data.microsoft.com'
'settings-ssl.xboxlive.com'
'settings-win.data.microsoft.com'
'sgmetrics.cloudapp.net'
'shell.windows.com'
'siweb.microsoft.akadns.net'
'skyapi.skyprod.akadns.net'
'sls.update.microsoft.com'
'sls.update.microsoft.com.akadns.net'
'sls.update.microsoft.com.nsatc.net'
'sO.2mdn.net'
'spynet.microsoft.com'
'spynet2.microsoft.com'
'spynetalt.microsoft.com'
'sqm.df.telemetry.microsoft.com'
'sqm.microsoft.com'
'sqm.telemetry.microsoft.com'
'sqm.telemetry.microsoft.com.nsatc.net'
'ssw.live.com'
'ssw.live.com.nsatc.net'
'static.2mdn.net'
'static-2mdn-net.l.google.com'
'statsfe1.ws.microsoft.com'
'statsfe1.ws.microsoft.com.nsatc.net'
'statsfe2.update.microsoft.com.akadns.net'
'statsfe2.ws.microsoft.com'
'statsfe2.ws.microsoft.com.nsatc.net'
'storeedgefd.dsx.mp.microsoft.com'
'support.msn.microsoft.akadns.net'
'survey.watson.microsoft.com'
't.urs.microsoft.com.nsatc.net'
't0.ssl.ak.dynamic.tiles.virtualearth.net'
't0.ssl.ak.tiles.virtualearth.net'
'telecommand.telemetry.microsoft.com'
'telecommand.telemetry.microsoft.com.nsatc.net'
'telemetry.appex.bing.net'
'telemetry.appex.search.prod.ms.akadns.net'
'telemetry.microsoft.com'
'telemetry.urs.microsoft.com'
'tile-service.weather.microsoft.com'
'tlu.dl.delivery.mp.microsoft.com'
'udc.msn.com'
'urs.microsoft.com'
'version.hybrid.api.here.com'
'view.atdmt.com'
'vortex.data.microsoft.com'
'vortex-bn2.metron.live.com.nsatc.net'
'vortex-cy2.metron.live.com.nsatc.net'
'vortex-hk2.metron.live.com.nsatc.net'
'vortex-sandbox.data.glbdns2.microsoft.com'
'vortex-sandbox.data.microsoft.com'
'vortex-win.data.microsoft.com'
'w3.b.cap-mii.net'
'watson.live.com'
'watson.microsoft.com'
'watson.microsoft.com.nsatc.net'
'watson.ppe.telemetry.microsoft.com'
'watson.telemetry.microsoft.com'
'watson.telemetry.microsoft.com.nsatc.net'
'wes.df.telemetry.microsoft.com'
'win10.ipv6.microsoft.com.nsatc.net'
'www.modern.ie'
#'www.msftncsi.com'
);

# init variables
l1=;l2=;l3=;l4=;l5=;
bl=block.cmd;ub=unblock.cmd;

# dig with shortened output, get results from google public dns
d(){ dig @8.8.8.8 +short ${@} 2>/dev/null; };

# recursively resolve all hosts and children from array h up to 5 levels deep
# resolve hosts in array h and store results in array l1
for l in ${h[@]}; do l1=(${l1[@]} $(d ${l}|grep -v akamai));done;
# resolve hosts in array l1 and store results in array l2
for l in ${l1[@]};do l2=(${l2[@]} $(d ${l}|grep -v akamai));done;
# resolve hosts in array l2 and store results in array l3
for l in ${l2[@]};do l3=(${l3[@]} $(d ${l}|grep -v akamai));done;
# resolve hosts in array l3 and store results in array l4
for l in ${l3[@]};do l4=(${l4[@]} $(d ${l}|grep -v akamai));done;
# resolve hosts in array l4 and store results in array l5
for l in ${l4[@]};do l5=(${l5[@]} $(d ${l}|grep -v akamai));done;

# combine results from arrays l1 - l5, sort/dedupe, store in array l
l=$(printf '%s\n' ${l1[@]} ${l2[@]} ${l3[@]} ${l4[@]} ${l5[@]}|
sed 's/\.$//g'|grep -v [a-z]$|sort -t . -k 1,1n -k 2,2n -k 3,3n -k 4,4n|uniq);

# init block/unblock files
printf '%s\n%s\n' "@echo off" "route print 2>nul >routes.tmp"|tee ${bl} ${ub} >/dev/null 2>&1;

# write ip blocks to block file
# get existing routes and write to temp file for faster processing
for x in ${l[@]};
do
  # check existing routes for ip
  printf '%s\n' "findstr ${x} routes.tmp >nul 2>&1" >>${bl};
  # if ip not found block it
  printf '%s\n' "if %errorlevel% neq 0 (" >>${bl};
  printf '%s\n' "  route -p add ${x}/32 0.0.0.0 >nul 2>&1" >>${bl};
  printf '%s\n' "  echo  - blocked ${x}" >>${bl};
  printf '%s\n' ")" >>${bl};
done;

# write host blocks to block file
for x in ${h[@]};
do
  # check existing host blocks for host
  printf '%s\n' "findstr \" ${x}\" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1" >>${bl};
  # if host not found block it
  printf '%s\n' "if %errorlevel% neq 0 (" >>${bl};
  printf '%s\n' "  echo 0.0.0.0 ${x} >>%systemdrive%\windows\system32\drivers\etc\hosts" >>${bl};
  printf '%s\n' "  echo  - blocked ${x}" >>${bl};
  printf '%s\n' ")" >>${bl};
done;

# delete temp files
printf '%s\n' "del /f /q routes.tmp >nul 2>&1" >>${bl};

# write ip unblocks to unblock file
# get existing routes and write to temp file for faster processing
for x in ${l[@]};
do
  # check existing routes for ip
  printf '%s\n' "findstr ${x} routes.tmp >nul 2>&1" >>${ub};
  # if ip is found unblock it
  printf '%s\n' "if %errorlevel% equ 0 (" >>${ub};
  printf '%s\n' "  route delete ${x} >nul 2>&1" >>${ub};
  printf '%s\n' "  echo  - unblocked ${x}" >>${ub};
  printf '%s\n' ")" >>${ub};
done;

# unblock hosts
for x in ${h[@]};
do
  # check existing host blocks for host
  printf '%s\n' "findstr \" ${x}\" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1" >>${ub};
  # if host is found unblock it
  printf '%s\n' "if %errorlevel% equ 0 (" >>${ub};
  printf '%s\n' "  \"%~dp0sed.exe\" -i \"/${x}/d\" \"%systemdrive%\windows\system32\drivers\etc\hosts\" >nul 2>&1" >>${ub};
  printf '%s\n' "  echo  - unblocked ${x}" >>${ub};
  printf '%s\n' ")" >>${ub};
done;

# delete temp files and exit
printf '%s\n' "del /f /q routes.tmp >nul 2>&1" >>${ub};
printf '%s' 'exit'|tee -a ${bl} ${ub} >/dev/null 2>&1;
