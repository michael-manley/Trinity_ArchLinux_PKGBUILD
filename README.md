# Trinity_ArchLinux_PKGBUILD
PKGBUILD's for building Trinity on Arch Linux

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
#!/bin/sh
git clone https://github.com/e1z0/Trinity_ArchLinux_PKGBUILD.git trinity
cd trinity/R14.0.4
dir=$PWD
for pkg in tqt3 tqtinterface arts dbus-tqt dbus-1-tqt tqca-tls libart-lgpl avahi-tqt tdelibs tdebase; do
  cd "$dir"/tde-"$pkg"
  makepkg -Lsci
done

```

## Unbuildable Packages
Here lists the unbuildable packages at the moment. Please help make these packages buildable and submit any pull
requests to fix them. Each package has a Bug entry which includes the build log for reference.

1. tde-tdeartwork - Fails with undefined references see Issue #19