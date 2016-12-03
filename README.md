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
8. tdegraphics [DONE]
9. tdepim [DONE]
10. tdesdk [DONE]
11. tde-libkdcraw [DONE]
12. tde-libkexiv2 [DONE]
13. tde-libcaldav [DONE]
14. tde-libcarddav [DONE]
15. tdevelop [in progress] - fails with linkink against qt-mt
16. tde-tdegames [DONE] 
17. tde-tdeaddons [DONE]
18. tdeedu [DONE]
19. tde-tdewebdev [DONE]
20. tde-tdetoys [DONE]

## Applications
1. tde-tdepowersave [DONE]
2. gtk-qt-engine [DONE]
3. gtk3-tqt-engine [in progress]
4. kmplayer [DONE]
5. amarok [in progress]
