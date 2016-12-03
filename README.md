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

There is a script for that:
```
#!/bin/sh
git clone https://github.com/e1z0/Trinity_ArchLinux_PKGBUILD.git trinity
cd trinity/R14.0.4
dir=$PWD
for pkg in tqt3 tqtinterface arts dbus-tqt dbus-1-tqt tqca-tls libart-lgpl avahi-tqt tdelibs tdebase tdebindings 
tdeaccessibility tdeutils; do
  cd "$dir"/tde-"$pkg"
  makepkg -Lsci
done

```

## Ported Packages
1. tdebindings [DONE]
2. tdeaccessibility [DONE]
3. tdeutils [DONE]
4. tdemultimedia [DONE]
5. tdenetwork [DONE]
6. tdeadmin [DONE]
7. tdeartwork [DONE]
8. tdeutils [DONE]
9. tdegraphics [DONE]
10. tdepim [DONE]
11. tdesdk [DONE]
12. tde-libkdcraw [DONE]
13. tde-libkexiv2 [DONE]
14. tde-libcaldav [DONE]
15. tde-libcarddav [DONE]
16. tdevelop [in progress]
17. tdeaddons [in progress]


## Applications
1. tde-tdepowersave [DONE]
2. gtk-qt-engine [DONE]
3. gtk3-tqt-engine [in progress]
