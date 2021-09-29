As of 9/29/2021, this repo is now merged over to Trinity @ https://mirror.git.trinitydesktop.org/gitea/TDE/tde-packaging/src/branch/master/arch
This repo will now be archived and further development will occur there.

# Trinity_ArchLinux_PKGBUILD
PKGBUILD's for building Trinity on Arch Linux

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

The Build Script build.sh will automatically source this environment and is not needed to be ran beforehand

## Building the Trinity Packages
All you need to do is run ./build.sh after installing any dependencies. A Docker Script is included to create
a temporary build environment for Trinity. It is recommended to use this Docker Environment as this is how
the official trinity arch repo is compiled by. See the README.md in DockerBuildEnvironment for details.

## Unbuildable Packages
Here lists the unbuildable packages at the moment. Please help make these packages buildable and submit any pull
requests to fix them. Each package has a Bug entry which includes the build log for reference.

1. amarok - Needs dependencies and havent added them into build environment yet, wasnt yet included anyway
