# Trinity_ArchLinux_PKGBUILD
PKGBUILD's for building Trinity on Arch Linux

## What is the Attic folder
This contains the original PKGBUILD files that were for an older version of TDE. These were used for the
porting effort for the latest R14.0.3 build.

## How to build Trinity with these Files
It is recommended you build these with a chroot as it will give a cleaner environment. To build you must build
each package in the following order for a core environment.

1. tqt3 (replaces Qt3; Qt3 without the tqtinterface layer remains available)
2. tqtinterface
3. arts
4. dbus-tqt
5. dbus-1-tqt
6. tqca-tls (Recommended but required for some applications, such as the Kopete OTR add-on)
7. libart-lgpl
8. avahi-tqt (Recommended but required when supporting DNS discovery services)
9. tdelibs
10. tdebase

For additional packages a recommended order is shown

1. tdebindings
2. tdeaccessibility
3. tdeutils
4. tdemultimedia
5. tdenetwork
6. tdeadmin
7. tdeartwork
8. tdegames
9. tdetoys
10. tdeedu
11. tdegraphics
12. tdepim
13. tdesdk (Build tdesdk after installing tdepim. tdepim provides libkcal (bugzilla) hooks for tdesdk.)
14. tdevelop (Build tdevelop after tdesdk. tdesdk provides cvs support for tdevelop.)
15. tdeaddons

# PKGFILE Completion
Base Packages

1. tqt3 [DONE]
2. tqtinterface [DONE]
3. arts [DONE]
4. dbus-tqt [DONE]
5. dbus-1-tqt [DONE]
6. tqca-tls [DONE]
7. libart-lgpl [DONE]
8. avahi-tqt [DONE]
9. tdelibs [DONE]
10. tdebase [DONE]

Additional Packages

1. tdebindings [DONE]
2. tdeaccessibility [DONE]
3. tdeutils [DONE]
4. tdemultimedia [DONE]
5. tdenetwork [DONE]
6. tdeadmin [DONE]
7. tdeartwork [DONE]
8. tdegames
9. tdetoys
10. tdeedu
11. tdegraphics
12. tdepim [DONE]
13. tdesdk
14. tdevelop
15. tdeaddons
16. tde-libkdcraw [DONE]
17. tde-libkexiv2 [DONE]
18. tde-libcaldav [DONE]
19. tde-libcarddav [DONE]
