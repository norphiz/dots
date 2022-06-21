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

alias h='htop'
alias v='nvim'
alias r='rm -rf'
alias l='ls -la'
alias n='neofetch'
alias mk='mkdir -p'
alias c='curl -fLO'
alias sv='sudo nvim'
alias sr='sudo rm -rf'
alias re='sudo reboot'
alias wget='curl -fLO'
alias sm='sudo mkdir -p'
alias po='sudo poweroff'
alias s='sudo pacman -Ss'
alias p='sudo pacman -Syu'
alias g='git clone --depth 1'
alias q='sudo pacman -Q | grep'
alias i='sudo pacman -S --needed'
alias yy='xclip -selection clipboard'
alias u='sudo pacman -Rns --noconfirm'
alias startx='startx > /dev/null 2>&1'
alias pp='xclip -selection clipboard -o'
alias clean='sudo rm -rf /var/cache/pacman/pkg/*'

export LC_COLLATE='C'
export LANG='en_US.UTF-8'
export LS_COLORS='di=1;31'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_so=$'\e[01;33m'
export QT_QPA_PLATFORMTHEME='qt5ct'
export LESS_TERMCAP_us=$'\e[1;4;31m'
export PS1='\[$(tput bold)\]\[$(tput setaf 1)\]\W\[$(tput sgr0)\] $ '
