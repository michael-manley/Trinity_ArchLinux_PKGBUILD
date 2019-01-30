#!/bin/bash
set -e
tdesrc=$PWD

cd $tdesrc/tde-core
dir=$PWD
for pkg in tqt3 tqtinterface arts dbus-tqt dbus-1-tqt tqca-tls libart-lgpl avahi-tqt tdelibs tdebase; do
  cd "$dir"/tde-"$pkg"
  updpkgsums
done

cd $tdesrc/tde-base
dir=$PWD
for pkg in tdeadmin tdeartwork tdebindings tdegraphics tdeutils; do
  cd "$dir"/tde-"$pkg"
  updpkgsums
done

cd $tdesrc/tde-libs
dir=$PWD
for pkg in libcaldav libcarddav libkdcraw libkexiv2; do
  cd "$dir"/tde-"$pkg"
  updpkgsums
done

cd $tdesrc/tde-extra
dir=$PWD
for pkg in tdenetwork tdegames amarok gtk-qt-engine gtk3-tqt-engine kmplayer krusader ksplash-engine-moodin style-qtcurve systemsettings tdeaccessibility tdeaddons tdeedu tdemultimedia tdenetworkmanager tdepim tdepowersave tdesudo tdetoys tdmtheme twin-style-crystal; do
  cd "$dir"/tde-"$pkg"
  updpkgsums
done

cd $tdesrc/tde-devel
dir=$PWD
for pkg in tdesdk tdevelop tdewebdev; do
  cd "$dir"/tde-"$pkg"
  updpkgsums
done