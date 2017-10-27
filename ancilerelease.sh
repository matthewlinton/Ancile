#!/bin/sh
# ancilerelease.sh - Build the latest release of Ancile using Ancile_Core and all approved plugins
#       This script requires that GIT be installed on your system

SCRIPTNAME='AncileRelease'
SCRIPTVERSION='1.3'

PLUGINLIST='plugins.lst'
BASEDIR='release'

#### Init #####################################################################
mkdir -p "$BASEDIR"

#### Download Ancile Core #####################################################
git -C "$BASEDIR/" clone https://bitbucket.org/ancile_development/ancile_core.git

ANCILERELEASE="Ancile_$(head "$BASEDIR/ancile_core/ancile.cmd" | grep VERSION= | sed 's/.*=//')"
ANCILEDIR="$BASEDIR/$ANCILERELEASE"
mv "$BASEDIR/ancile_core" "$ANCILEDIR"

mkdir -p "$ANCILEDIR/docs/AncileCore"
mv "$ANCILEDIR/README.md" "$ANCILEDIR/docs/AncileCore/"
mv "$ANCILEDIR/docs/changes.txt" "$ANCILEDIR/docs/AncileCore/"

#### Download a list of plugins ###############################################
for plugin in $(grep -vE '^(\s*$|#)' $PLUGINLIST); do
    pluginname="$(basename -s .git $plugin)"
    plugindir="$BASEDIR/$pluginname"
    docdir="$plugindir/docs"

    echo
    # Fetch the plugin
    git -C "$BASEDIR" clone "$plugin"

    # Move the plugin's README.md file into the release "docs" folder
    if [ -f "$plugindir/README.md" ]; then
        mkdir -p "$docdir/"
        mv "$plugindir/README.md" "$docdir/$pluginname.README.md"
    fi
    
    # mv the plugin to the release directory
    cp -a "$plugindir/"* "$ANCILEDIR/"
    rm -rf "$plugindir"
done
echo

#### Copy over plugin configuration information ##############################
for pldocdir in $(ls -d $ANCILEDIR/docs/*/); do
    if [ -f "$pldocdir/config.ini" ]; then
        cat "$pldocdir/config.ini" >> "$ANCILEDIR/config.ini"
        echo >> "$ANCILEDIR/config.ini"
    fi
done

#### Copy the Release readme to the correct location ##########################
cp docs/release.README.md "$ANCILEDIR/README.md"

#### Clean the Ancile directory ###############################################
find "$BASEDIR/" -iname .git -exec rm -rf {} \;
find "$BASEDIR/" -iname .gitignore -exec rm -rf {} \;

#### Create a zip archive #####################################################
pushd "$BASEDIR/"
zip -r "$ANCILERELEASE.zip" "$ANCILERELEASE"
popd
