FROM archlinux/base

RUN echo "[docker-dev]" >> /etc/pacman.conf
RUN echo "SigLevel = Optional TrustAll" >> /etc/pacman.conf
RUN echo "Server = http://repo.nasutek.com/arch/contrib/docker-dev/" >> /etc/pacman.conf

RUN pacman -Syyu --noconfirm
RUN pacman-db-upgrade

RUN pacman -S --noconfirm base-devel sudo grep wget xscreensaver libxss libgphoto2 fribidi sane xmms2 alsa-plugins alsa-tools alsa-utils audiofile glib2 libmad libogg libvorbis pulseaudio-alsa avahi nss-mdns dbus libraw1394 libxtst lm_sensors ttf-dejavu ttf-freefont xorg-server xorg-xinit openssl-1.0 aspell hspell jasper libcups libidn libutempter libxcomposite libxslt openexr pcre xorg-iceauth xorg-xmessage xorg-xprop xorg-xset xorg-xsetroot glu taglib gtk3 dbus-glib speex wireless_tools wpa_supplicant boost boost-libs gnokii curl libraw pkgconfig autoconf imake cmake python2 imlib automake libtool libxkbfile smbclient rpcsvc-proto xorg-bdftopcf libiodbc libxi mariadb unixodbc libmng xorg-xrandr libxft flex subversion mplayer exiv2 doxygen
RUN pacman -S --noconfirm htdig lcms postgresql-9.6

RUN echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

RUN useradd -m dev
RUN gpasswd -a dev wheel
