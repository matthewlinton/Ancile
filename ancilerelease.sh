#!/bin/sh
# ancilerelease.sh - Build the latest release of Ancile using Ancile_Core and all approved plugins

SCRIPTNAME='AncileRelease'
SCRIPTVERSION='1.3'

PLUGINLIST='plugins.lst'
BASEDIR='release'

#### Init #####################################################################
mkdir -p "$BASEDIR"

#### Download Ancile Core #####################################################
git -C "$BASEDIR/" clone https://matthewlinton@bitbucket.org/ancile_development/ancile_core.git

ANCILEDIR="$BASEDIR/Ancile_$(head "$BASEDIR/ancile_core/ancile.cmd" | grep VERSION= | sed 's/.*=//')"
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
    git -C "$BASEDIR" clone "$plugin"

    mkdir -p "$docdir/$pluginname"
    mv "$plugindir/README.md" "$docdir/$pluginname/"
    cp -a "$plugindir/"* "$ANCILEDIR/"
    rm -rf "$plugindir"
done
echo

#### Copy the Release readme to the correct location ##########################
cp docs/release.README.md "$ANCILEDIR/README.md"

#### Clean the Ancile directory ###############################################
find "$BASEDIR/" -iname .git -exec rm -rf {} \;
find "$BASEDIR/" -iname .gitignore -exec rm -rf {} \;
