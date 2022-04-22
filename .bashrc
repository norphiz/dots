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

export PS1='\e[1;31m\]\W\[\e[m\] $ '
export LANG='en_US.UTF-8'
export LC_COLLATE='C'
export QT_QPA_PLATFORMTHEME='qt5ct'

alias   p='doas pacman -Syu' \
        v='nvim' \
        h='htop' \
        n='neofetch' \
        g='git clone --depth=1' \
        c='curl -fLO' \
        i='doas pacman -S --needed' \
        u='doas pacman -Rns --noconfirm' \
        s='doas pacman -Ss' \
        q='doas pacman -Q | grep' \
        d='doas' \
        r='rm -rf' \
        l='ls -la' \
	b='btop' \
        po='loginctl poweroff' \
        re='loginctl reboot' \
        co='doas make -j$(nproc) clean install' \
        un='doas make -j$(nproc) clean uninstall' \
        dv='doas nvim' \
        dr='doas rm -rf' \
        dm='doas mkdir -p' \
        up='doas pacman -Syu' \
        mk='mkdir -p' \
        sudo='doas' \
        wget='curl -fLO' \
	copy='xclip -selection clipboard' \
	paste='xclip -selection clipboard -o' \
        clean='doas rm -rf /var/cache/pacman/pkg/*' \
        startx='startx > /dev/null 2>&1' \
