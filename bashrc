#
#     _               _              
#    | |__   __ _ ___| |__  _ __ ___ 
#    | '_ \ / _` / __| '_ \| '__/ __|
#   _| |_) | (_| \__ \ | | | | | (__ 
#  (_)_.__/ \__,_|___/_| |_|_|  \___|
#                                  
#####################################
#
#	Author: Francisco Esteve

# exports
#export PATH=$PATH:/home/narf/documents/android-studio/bin/
export EDITOR='vim'
export TERM='st'

# auto cd
shopt -s autocd

# vi mode
set -o vi

# Make my prompt pretty
export PS1="[\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;48m\]\u\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;228m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\\$\[$(tput sgr0)\]] \[$(tput sgr0)\]"

# Personal Aliases
alias v='vim'
alias vc='vim ~/.vimrc'
alias bashc='vim ~/.bashrc'
alias bashs='source ~/.bashrc'
alias termc='vim ~/.Xresources'
alias terms='xrdb ~/.Xresources'
alias ic='vim ~/.config/i3/config'
alias isc='vim ~/.config/i3status/config'
alias tcd='$TERM & disown'
alias pacman='sudo pacman'
alias calc='mate-calc-cmd'

# Shameless steal from mate
alias ls='ls --color=auto'
alias la='ls --color=auto -a'
alias ll='ls --color=auto -a -l'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# and luke
alias mkdir='mkdir -pv'
alias ccat='highlight --out-format=ansi'
alias starwars='telnet towel.blinkenlights.nl'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#startx
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec startx
fi
## old prompt   PS1='[\u@\h \W]\$ '

cd()
{
    [[ $# -eq 0 ]] && return
    builtin cd "$@"
}
exec zsh

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
