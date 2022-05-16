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

alias d='doas'
alias h='htop'
alias v='nvim'
alias r='rm -rf'
alias l='ls -la'
alias sudo='doas'
alias n='neofetch'
alias mk='mkdir -p'
alias c='curl -fLO'
alias dv='doas nvim'
alias dr='doas rm -rf'
alias re='doas reboot'
alias wget='curl -fLO'
alias dm='doas mkdir -p'
alias po='doas poweroff'
alias s='doas pacman -Ss'
alias p='doas pacman -Syu'
alias g='git clone --depth 1'
alias q='doas pacman -Q | grep'
alias i='doas pacman -S --needed'
alias yy='xclip -selection clipboard'
alias u='doas pacman -Rns --noconfirm'
alias startx='startx > /dev/null 2>&1'
alias pp='xclip -selection clipboard -o'
alias co='doas make -j$(nproc) clean install'
alias un='doas make -j$(nproc) clean uninstall'
alias clean='doas rm -rf /var/cache/pacman/pkg/*'

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
