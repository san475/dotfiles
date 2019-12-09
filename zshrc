#         _              
 # _______| |__  _ __ ___ 
# |_  / __| '_ \| '__/ __|
 # / /\__ \ | | | | | (__ 
# /___|___/_| |_|_|  \___|
                        
# Colors and Prompt
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# exports
export PATH=$PATH:/home/narf/documents/android-studio/bin/
export EDITOR='vim'
export TERM='st'

# History in cache directory
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

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

alias vcuvpn='sudo ~/scripts/vcuvpn.sh'

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

# Change cursor shape for different vi modes.
function zle-keymap-select {
if [[ ${KEYMAP} == vicmd ]] ||
	[[ $1 = 'block' ]]; then
	echo -ne '\e[1 q'
elif [[ ${KEYMAP} == main ]] ||
	[[ ${KEYMAP} == viins ]] ||
	[[ ${KEYMAP} = '' ]] ||
	[[ $1 = 'beam' ]]; then
	echo -ne '\e[5 q'
fi
}
zle -N zle-keymap-select
zle-line-init() {
	zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
	echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

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

# Load zsh-syntax-highlighting; should be last
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
