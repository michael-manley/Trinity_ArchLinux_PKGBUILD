#!/bin/bash
set -e
tdesrc=$PWD
rm -rf $tdesrc/out

. $tdesrc/environment

compile_directory() {  
  cd $tdesrc/$1
  dir=$PWD
  for pkg in $2; do
    if [[ $pkg != .* ]]; then
      cd "$dir"/tde-"$pkg"
      makepkg -Lsci
    fi
  done
}

### Build Packages
compile_directory tde-core "tqt3 tqtinterface arts dbus-tqt dbus-1-tqt tqca-tls libart-lgpl avahi-tqt tdelibs tdebase"
compile_directory tde-libs "libcaldav libcarddav libkdcraw libkexiv2"
compile_directory tde-base "tdeartwork tdebindings tdegraphics tdeutils tdeadmin"
compile_directory tde-extra "tdenetwork tdegames gtk-qt-engine tdemultimedia systemsettings .amarok kmplayer krusader tdeedu ksplash-engine-moodin style-qtcurve tdeaccessibility tdepim tdeaddons tdenetworkmanager tdepowersave tdesudo tdetoys tdmtheme twin-style-crystal gtk3-tqt-engine"
compile_directory tde-devel "tdesdk tdevelop tdewebdev"

### Copy completed packages to out folder and download dependencies to out folder
cd $tdesrc
mkdir -p $tdesrc/out
cp $(find $tdesrc -name *.pkg.tar.xz) $tdesrc/out
wget http://repo.nasutek.com/arch/contrib/docker-dev/htdig-3.2.0b6-11-x86_64.pkg.tar.xz -O $tdesrc/out/htdig-3.2.0b6-11-x86_64.pkg.tar.xz
wget http://repo.nasutek.com/arch/contrib/docker-dev/lcms-1.19-7-x86_64.pkg.tar.xz -O $tdesrc/out/lcms-1.19-7-x86_64.pkg.tar.xz
wget http://repo.nasutek.com/arch/contrib/docker-dev/postgresql-9.6-9.6.13-1-x86_64.pkg.tar.xz -O $tdesrc/out/postgresql-9.6-9.6.13-1-x86_64.pkg.tar.xz
wget http://repo.nasutek.com/arch/contrib/docker-dev/python2-lcms-1.19-7-x86_64.pkg.tar.xz -O $tdesrc/out/python2-lcms-1.19-7-x86_64.pkg.tar.xz

### Create trinity pacman repo
repo-add $tdesrc/out/trinity.db.tar.gz $tdesrc/out/*.pkg.tar.xz
