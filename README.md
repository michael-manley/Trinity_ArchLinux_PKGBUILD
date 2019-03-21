# Trinity_ArchLinux_PKGBUILD
PKGBUILDs for building Trinity on Arch Linux

## Before installing
Before installing please remove any presence of JRE and RUBY packages, 
after install you can put them back.


## How to build Trinity with these Files
If you have trouble building one of these packages,
please source the environment variables by issuing (from package directory):
```
. ../environment
```
OR
```
source ../environment
```

This script will get you to a basic Trinity environment
```
#!/bin/bash
set -e
tdesrc=$PWD

cd $tdesrc/tde-core
dir=$PWD
for pkg in tde-tqt3 tde-tqtinterface tde-arts tde-dbus-tqt tde-dbus-1-tqt tde-tqca-tls tde-libart-lgpl tde-avahi-tqt tde-tdelibs tde-tdebase; do
  cd "$dir"/tde-"$pkg"
  makepkg -Lsci
done

cd $tdesrc/tde-base
dir=$PWD
for pkg in tdeadmin tdeartwork tdebindings tdegraphics tdeutils; do
  cd "$dir"/tde-"$pkg"
  makepkg -Lsci
done

cd $tdesrc/tde-libs
dir=$PWD
for pkg in libcaldav libcarddav libkdcraw libkexiv2; do
  cd "$dir"/tde-"$pkg"
  makepkg -Lsci
done

cd $tdesrc/tde-extra
dir=$PWD
for pkg in tdenetwork tdegames amarok gtk-qt-engine gtk3-tqt-engine kmplayer krusader ksplash-engine-moodin style-qtcurve systemsettings tdeaccessability tdeaddons tdeedu tdemultimedia tdenetworkmanager tdepim tdepowersave tdesudo tdetoys tdmtheme twin-style-crystal; do
  cd "$dir"/tde-"$pkg"
  makepkg -Lsci
done

cd $tdesrc/tde-devel
dir=$PWD
for pkg in tdesdk tdevelop tdewebdev; do
  cd "$dir"/tde-"$pkg"
  makepkg -Lsci
done
```

## Unbuildable Packages
Here lists the unbuildable packages at the moment. Please help make these packages buildable and submit any pull
requests to fix them. Each package has a Bug entry which includes the build log for reference.

1. tde-tdeartwork - Fails with undefined references see Issue #19
