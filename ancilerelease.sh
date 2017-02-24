#!/bin/sh
# ancilerelease.sh - Build the latest release of Ancile using Ancile_Core and all approved plugins

SCRIPTNAME='AncileRelease'
SCRIPTVERSION='1.0'

PLUGINLIST='plugins.lst'

#### Download Ancile Core #####################################################
rm -rf ancile_core
git clone https://matthewlinton@bitbucket.org/ancile_development/ancile_core.git

ANCILEDIR="Ancile_$(head ancile_core/ancile.cmd | grep VERSION= | sed 's/.*=//')"
mv ancile_core "$ANCILEDIR"

#### Download a list of plugins ###############################################
for plugin in $(grep -vE '^(\s*$|#)' $PLUGINLIST); do
    git clone "$plugin"
    cp -r "$(basename -s .git $plugin)/*" "$ANCILEDIR/"
    rm -rf "$(basename -s .git $plugin)"
done

#### Clean the Ancile directory ###############################################

