#         _              
 # _______| |__  _ __ ___ 
# |_  / __| '_ \| '__/ __|
 # / /\__ \ | | | | | (__ 
# /___|___/_| |_|_|  \___|
##########################
#
# Author: Francisco Esteve
#                        


# Colors and Prompt
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# exports
# export PATH=$PATH:/home/narf/documents/android-studio/bin/
export EDITOR='vim'
# export TERM='st'

# History in cache directory
HISTSIZE=10000
SAVEHIST=10000

# Personal Aliases
alias v='vim'
alias vc='vim ~/.vimrc'
alias bashc='vim ~/.bashrc'
alias zc='vim ~/.zshrc'
alias bashs='source ~/.bashrc'
alias termc='vim ~/.Xresources'
alias terms='xrdb ~/.Xresources'
alias ic='vim ~/.config/i3/config'
alias isc='vim ~/.config/i3status/config'
alias tcd='$TERM & disown'
alias pacman='sudo pacman'
alias calc='mate-calc-cmd'

# Shameless steal from mate
alias ls='ls -G'
alias la='ls -Ga'
alias ll='ls -Ga -l'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# and luke
alias mkdir='mkdir -pv'
alias ccat='highlight --out-format=ansi'
alias starwars='telnet towel.blinkenlights.nl'

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1
# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
	tmp="$(mktemp)"
	lf -last-dir-path="$tmp" "$@"
	if [ -f "$tmp" ]; then
		dir="$(cat "$tmp")"
		rm -f "$tmp"
		[ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
	fi
}

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

#startx
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec startx
fi

# Cd does not take you home
cd()
{
    [[ $# -eq 0 ]] && return
    builtin cd "$@"
}

if [ -f ~/.dircolors ]; then  
	eval `dircolors ~/.dircolors`
fi 

# Load zsh-syntax-highlighting; should be last
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/__tabtab.bash ] && . ~/.config/tabtab/__tabtab.bash || true
