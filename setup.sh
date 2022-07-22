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

printf 'alias d="doas"
alias h="htop"
alias v="nvim"
alias r="rm -rf"
alias l="ls -la"
alias n="neofetch"
alias mk="mkdir -p"
alias c="curl -fLO"
alias dv="doas nvim"
alias dr="doas rm -rf"
alias re="doas reboot"
alias wget="curl -fLO"
alias dm="doas mkdir -p"
alias po="doas poweroff"
alias s="doas pacman -Ss"
alias p="doas pacman -Syu"
alias g="git clone --depth 1"
alias q="doas pacman -Q | grep"
alias i="doas pacman -S --needed"
alias yy="xclip -selection clipboard"
alias startx="startx > /dev/null 2>&1"
alias pp="xclip -selection clipboard -o"
alias u="doas pacman -Rnsu --noconfirm"
alias clean="doas rm -rf /var/cache/pacman/pkg/*"

export LC_COLLATE="C"
export LANG="en_US.UTF-8"
export LS_COLORS="di=1;31"
export QT_QPA_PLATFORMTHEME="gtk2"
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\]\W\[$(tput sgr0)\] $ "' > .bashrc; source .bashrc

printf '! Normal      Bright
! --------    -------
! 0 Black      8 Black
! 1 Red        9 Red
! 2 Green     10 Green
! 3 Yellow    11 Yellow
! 4 Blue      12 Blue
! 5 Magenta   13 Magenta
! 6 Cyan      14 Cyan
! 7 White     15 White

*.color0: #5c6370
*.color1: #ff6e7a
*.color2: #c0fa96
*.color3: #ffd587
*.color4: #6ebeff
*.color5: #e387ff
*.color6: #66deed
*.color7: #dfe5f2
*.color8: #5c6370
*.color9: #ff6e7a
*.color10: #c0fa96
*.color11: #ffd587
*.color12: #6ebeff
*.color13: #e387ff
*.color14: #66deed
*.color15: #dfe5f2
*.foreground: #dfe5f2
*.background: #21242b
*.cursorColor: #dfe5f2

URxvt.scrollBar: 0
URxvt.cursorBlink: 1
URxvt.saveline: 5000
URxvt.letterSpace: -1
URxvt.matcher.button: 1
URxvt.internalBorder: 24
URxvt.url-launcher: firefox
URxvt.resize-font.show: C-End
URxvt.resize-font.reset: C-Home
URxvt.resize-font.bigger: C-Page_Up
URxvt.termName: rxvt-unicode-256color
URxvt.resize-font.smaller: C-Page_Down
URxvt.perl-ext-common: resize-font,selection-to-clipboard
URxvt.font: xft: Roboto Mono:pixelsize=24:antialias=true:autohint=true:style=Regular
URxvt.boldFont: xft: Roboto Mono:pixelsize=24:antialias=true:autohint=true:style=Bold
URxvt.italicFont: xft: Roboto Mono:pixelsize=24:antialias=true:autohint=true:style=Italic
URxvt.boldItalicFont: xft: Roboto Mono:pixelsize=24:antialias=true:autohint=true:style=Bold Italic

st.cwscale: 1.0
st.chscale: 1.0
st.borderpx: 24
st.tabspaces: 8
st.minlatency: 8
st.bellvolume: 0
st.maxlatency: 33
st.shell: /bin/sh
st.blinktimeout: 800
st.termname: st-256color
st.font: Roboto Mono:pixelsize=24:antialias=true:autohint=true

Xft.dpi: 96
Xft.rgba: rgb
Xft.hinting: 1
Xft.autohint: 1
Xft.antialias: 1
Xft.hintstyle: hintfull
Xft.lcdfilter: lcddefault' > .Xdefaults

printf '#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

rfkill unblock wifi; amixer set Master 76 unmute > /dev/null 2>&1; amixer set Speaker 0 mute > /dev/null 2>&1; clear; startx > /dev/null 2>&1' > .bash_profile

printf '[General]
AddressRandomization=true
AddressRandomizationRange=nic
EnableNetworkConfiguration=True' > /etc/iwd/main.conf; dinitctl restart iwd; clear; printf 'run startx'
