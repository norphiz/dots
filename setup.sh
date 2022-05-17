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

printf '#!/usr/bin/env bash

redshift -P -O 3500K &
~/.fehbg &
slstatus &
xrdb ~/.Xdefaults

exec dwm' > /home/$(logname)/.xinitrc

printf '
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
Server = https://artixlinux.qontinuum.space:4443/artixlinux/universe/os/$arch
Server = https://mirror1.cl.netactuate.com/artix/universe/$arch

#[lib32]
#Include = /etc/pacman.d/mirrorlist

#[extra]
#Include = /etc/pacman.d/mirrorlist-arch

#[community]
#Include = /etc/pacman.d/mirrorlist-arch' > /etc/pacman.conf

pacman -Sy; pacman -S --noconfirm --needed gcc make pkgconf xorg-server xorg-xinit libxft ttf-roboto-mono ttf-font-awesome gtk-engines gtk-engine-murrine man-db redshift arc-solid-gtk-theme arc-icon-theme lxappearance xclip xf86-video-intel gnome-themes-extra

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

git clone https://github.com/pacokwon/onedarkhc.vim /home/$(logname)/onedarkhc.vim/; mv /home/$(logname)/onedarkhc.vim/autoload/ /home/$(logname)/.config/nvim/; mv /home/$(logname)/onedarkhc.vim/colors/ /home/$(logname)/.config/nvim/; rm -rf /home/$(logname)/onedarkhc.vim/; cd /home/$(logname)/.config/dwm/; make -j$(nproc) clean install; cd /home/$(logname)/.config/dmenu/; make -j$(nproc) clean install; cd /home/$(logname)/.config/st/; make -j$(nproc) clean install; cd /home/$(logname)/.config/slstatus/; make -j$(nproc) clean install; cd /home/$(logname)/; clear

printf 'everything done, now run startx.'
