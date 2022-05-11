###################################
#  ________
# < bashrc >
#  --------
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

export LC_COLLATE='C'
export LANG='en_US.UTF-8'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_so=$'\e[01;33m'
export QT_QPA_PLATFORMTHEME='qt5ct'
export LESS_TERMCAP_us=$'\e[1;4;31m'
export PS1='\[$(tput bold)\]\[$(tput setaf 1)\]\W\[$(tput sgr0)\] $ '

alias	v='nvim' \
        h='htop' \
        d='doas' \
	b='btop' \
        r='rm -rf' \
        l='ls -la' \
        sudo='doas' \
        n='neofetch' \
        mk='mkdir -p' \
        c='curl -fLO' \
        dv='doas nvim' \
        dr='doas rm -rf' \
        wget='curl -fLO' \
        dm='doas mkdir -p' \
        s='doas pacman -Ss' \
	p='doas pacman -Syu' \
        re='loginctl reboot' \
        up='doas pacman -Syu' \
        po='loginctl poweroff' \
        g='git clone --depth=1' \
        q='doas pacman -Q | grep' \
        i='doas pacman -S --needed' \
        u='doas pacman -Rns --noconfirm' \
        startx='startx > /dev/null 2>&1' \
	copy='xclip -selection clipboard' \
	paste='xclip -selection clipboard -o' \
        co='doas make -j$(nproc) clean install' \
        un='doas make -j$(nproc) clean uninstall' \
        clean='doas rm -rf /var/cache/pacman/pkg/*' \
