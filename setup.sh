#!/bin/sh

printf 'Server = https://universe.artixlinux.org/$arch
Server = https://mirror1.artixlinux.org/universe/$arch
Server = https://mirror.pascalpuffke.de/artix-universe/$arch
Server = https://artixlinux.qontinuum.space/artixlinux/universe/os/$arch
Server = https://mirror1.cl.netactuate.com/artix/universe/$arch
Server = https://ftp.crifo.org/artix-universe/' > /etc/pacman.d/mirrorlist-universe

printf '[options]
Color
ILoveCandy
CheckSpace
Architecture = auto
ParallelDownloads = 5
DisableDownloadTimeout
HoldPkg = pacman glibc
LocalFileSigLevel = Optional
SigLevel = Required DatabaseOptional

[system]
Include = /etc/pacman.d/mirrorlist

[world]
Include = /etc/pacman.d/mirrorlist

[galaxy]
Include = /etc/pacman.d/mirrorlist

[universe]
Include = /etc/pacman.d/mirrorlist-universe

#[lib32]
#Include = /etc/pacman.d/mirrorlist

#[extra]
#Include = /etc/pacman.d/mirrorlist-arch

#[community]
#Include = /etc/pacman.d/mirrorlist-arch' > /etc/pacman.conf; pacman -Sy; pacman -S --noconfirm --needed bspwm polybar rofi sxhkd rxvt-unicode xorg-server xorg-xinit xorg-xsetroot ttf-roboto-mono ttf-font-awesome gtk-engines gtk-engine-murrine man-db redshift arc-gtk-theme arc-icon-theme xclip xf86-video-intel alsa-utils; mkdir -p /etc/iwd/; git clone --depth 1 https://github.com/simmel/urxvt-resize-font.git; mv urxvt-resize-font/resize-font /usr/lib/urxvt/perl/; rm -rf urxvt-resize-font/; git clone --depth 1 https://github.com/pacokwon/onedarkhc.vim.git; mv onedarkhc.vim/colors/ .config/nvim/; mv onedarkhc.vim/autoload/ .config/nvim/; rm -rf onedarkhc.vim/; chmod +x .config/bspwm/*; chmod +x .config/polybar/launch.sh

printf '#!/bin/sh

bspwm' > .xinitrc

printf '
clear

startx > /dev/null 2>&1' >> .bash_profile

printf 'Section "InputClass"
    Identifier "Mouse0"
    Option "AccelSpeed" "-1"
    Option "AccelerationProfile" "-1"
    Option "AccelerationScheme" "none"
Endsection

Section "ServerFlags"
    Option "OffTime" "0"
    Option "BlankTime" "0"
    Option "StandbyTime" "0"
    Option "SuspendTime" "0"
EndSection

Section "InputClass"
    Option "XkbLayout" "br"
    Identifier "Keyboard0"
Endsection' > /etc/X11/xorg.conf

printf 'install btusb /bin/true
install btrtl /bin/true
install btbcm /bin/true
install btintel /bin/true
install iTCO_wdt /bin/true
install bluetooth /bin/true
install iTCO_vendor_support /bin/true' > /etc/modprobe.d/blacklist.conf; mkinitcpio -P

printf 'gtk-theme-name="Arc-Dark"
gtk-icon-theme-name="Arc"
gtk-font-name="Cantarell 11"
gtk-cursor-theme-name="Adwaita"
gtk-cursor-theme-size=0
gtk-toolbar-style=GTK_TOOLBAR_BOTH
gtk-toolbar-icon-size=GTK_ICON_SIZE_LARGE_TOOLBAR
gtk-button-images=1
gtk-menu-images=1
gtk-enable-event-sounds=0
gtk-enable-input-feedback-sounds=0
gtk-xft-antialias=1
gtk-xft-hinting=1
gtk-xft-hintstyle="hintfull"
gtk-xft-rgba="rgb"' > .gtkrc-2.0

printf '[General]
AddressRandomization=true
AddressRandomizationRange=nic
EnableNetworkConfiguration=True' > /etc/iwd/main.conf; dinitctl restart iwd; clear; printf 'run startx'
