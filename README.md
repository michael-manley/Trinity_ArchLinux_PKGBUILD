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
