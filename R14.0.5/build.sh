#!/bin/bash

### !!! tdeartwork in tde-base removed due to no compile
### !!! amarok in tde-extra removed due to no compile
### !!! gtk3-tqt-engine in tde-extra removed due to no compile
### !!! kmplayer in tde-extra removed due to no compile
### !!! systemsettings in tde-extra removed due to no compile
### !!! tdeedu in tde-extra removed due to no compile

set -e
tdesrc=$PWD

cd $tdesrc/tde-core
dir=$PWD
for pkg in tqt3 tqtinterface arts dbus-tqt dbus-1-tqt tqca-tls libart-lgpl avahi-tqt tdelibs tdebase; do
 cd "$dir"/tde-"$pkg"
 makepkg -Lsci
done

cd $tdesrc/tde-libs
dir=$PWD
for pkg in libcaldav libcarddav libkdcraw libkexiv2; do
 cd "$dir"/tde-"$pkg"
 makepkg -Lsci
done

cd $tdesrc/tde-base
dir=$PWD
for pkg in tdeadmin tdebindings tdegraphics tdeutils; do
 cd "$dir"/tde-"$pkg"
 makepkg -Lsci
done

cd $tdesrc/tde-extra
dir=$PWD
for pkg in tdenetwork tdegames gtk-qt-engine tdemultimedia krusader ksplash-engine-moodin style-qtcurve tdeaccessibility tdepim tdeaddons tdenetworkmanager tdepowersave tdesudo tdetoys tdmtheme twin-style-crystal; do
  cd "$dir"/tde-"$pkg"
  makepkg -Lsci
done

cd $tdesrc/tde-devel
dir=$PWD
for pkg in tdesdk tdevelop tdewebdev; do
  cd "$dir"/tde-"$pkg"
  makepkg -Lsci
done

mkdir -p $tdesrc/out
mv $(find $tdesrc -name *.pkg.tar.xz) $tdesrc/out
