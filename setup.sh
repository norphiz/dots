#!/usr/bin/env bash
###################################
#  _______
# < setup >
#  -------
#    \
#     \
#         .--.
#        |o_o |
#        |:_/ |
#       //   \ \
#      (|     | )
#     /'\_   _/`\
#     \___)=(___/
#
###################################

printf 'gtk-theme-name="Arc-Dark-solid"
gtk-icon-theme-name="Arc"
gtk-font-name="Cantarell 11"
gtk-cursor-theme-name="Adwaita"
gtk-cursor-theme-size=0
gtk-toolbar-style=GTK_TOOLBAR_BOTH
gtk-toolbar-icon-size=GTK_ICON_SIZE_LARGE_TOOLBAR
gtk-button-images=1
gtk-menu-images=1
gtk-enable-event-sounds=1
gtk-enable-input-feedback-sounds=1
gtk-xft-antialias=1
gtk-xft-hinting=1
gtk-xft-hintstyle="hintfull"
gtk-xft-rgba="rgb"' > /home/$(logname)/.gtkrc-2.0

printf '#!/usr/bin/env bash

exec bspwm' > /home/$(logname)/.xinitrc

printf '
clear

startx > /dev/null 2>&1' >> /home/$(logname)/.bash_profile

printf '[options]
HoldPkg = pacman glibc
Architecture = auto
Color
CheckSpace
ParallelDownloads = 5
ILoveCandy

SigLevel = Required DatabaseOptional
LocalFileSigLevel = Optional

[system]
Include = /etc/pacman.d/mirrorlist

[world]
Include = /etc/pacman.d/mirrorlist

[galaxy]
Include = /etc/pacman.d/mirrorlist

[universe]
Server = https://universe.artixlinux.org/$arch
Server = https://mirror1.artixlinux.org/universe/$arch
Server = https://mirror.pascalpuffke.de/artix-universe/$arch
Server = https://artixlinux.qontinuum.space/artixlinux/universe/os/$arch
Server = https://mirror1.cl.netactuate.com/artix/universe/$arch
Server = https://ftp.crifo.org/artix-universe/

#[lib32]
#Include = /etc/pacman.d/mirrorlist

#[extra]
#Include = /etc/pacman.d/mirrorlist-arch

#[community]
#Include = /etc/pacman.d/mirrorlist-arch' > /etc/pacman.conf

pacman -Sy; pacman -S --noconfirm --needed xorg-server xorg-xinit xorg-xsetroot ttf-roboto-mono ttf-font-awesome gtk-engines gtk-engine-murrine man-db redshift arc-solid-gtk-theme arc-icon-theme xclip xf86-video-intel gnome-themes-extra

printf 'Section "InputClass"
	Identifier "My Mouse"
	Option "AccelerationProfile" "-1"
	Option "AccelerationScheme" "none"
	Option "AccelSpeed" "-1"
Endsection

Section "InputClass"
	Identifier "system-keyboard"
	Option "XkbLayout" "br"
Endsection' > /etc/X11/xorg.conf

git clone https://github.com/pacokwon/onedarkhc.vim /home/$(logname)/onedarkhc.vim/; mv /home/$(logname)/onedarkhc.vim/autoload/ /home/$(logname)/.config/nvim/; mv /home/$(logname)/onedarkhc.vim/colors/ /home/$(logname)/.config/nvim/; rm -rf /home/$(logname)/onedarkhc.vim/; cd /home/$(logname)/; clear

printf 'everything done, now run startx.'
