LS_COLORS=$LS_COLORS:'di=1;33:ln=36'; export LS_COLORS;

#---------------CONFIGURATION-----------------------------
autoload -U compinit
compinit
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%F{red}%✘ %f'
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                             /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin
zstyle ':completion:*:s:*' command-path /usr/local/sbin /usr/local/bin \
                             /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin
#history
export HISTSIZE=2000
export HISTFILE="$HOME/.zsh/history"
export SAVEHIST=$HISTSIZE

#Cache
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/zsh_cache
#couleurs de completion
zmodload zsh/complist
setopt extendedglob
zstyle ':completion:*:*:kill:*:processes' list-colors "=(#b) #([0-9]#)*=36=31"
#eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors  $LS_COLORS
#zstyle ':completion:*:default' list-colors  ${(s.:.)LS_COLORS}
#zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
#Correction
#setopt correctall
#binkey
bindkey -e
#bindkey "\e[H" beginning-of-line # Début
bindkey "\e[F" end-of-line # Fin
bindkey "\e[3~" delete-char
bindkey "^R" history-incremental-search-backward # Rechercher
bindkey "\e[5C" forward-word
bindkey "\e[5D" backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
bindkey "\e[1;5C" forward-word
bindkey "\e[1;5D" backward-word
bindkey "^H" backward-kill-word
bindkey "^[[3;5~" delete-word

#-----------------------REGULAR COLORS----------------------
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White
#grep colors
export GREP_COLOR=32


#-----------------------VARIABLES----------------------------
#editeur de txt
export EDITOR=/usr/bin/micro


#-----------------------PROMPTS------------------------------
function exitstatus(){
	if [[ $? == 0 ]];then
		print '%F{green} ⭘ %f'
	else
		print '%F{red} ⭘ %f'
	fi
}
setopt promptsubst
#RPROMPT='%K{yellow}%F{black} %~ %f%k'
NEWLINE=$'\n'
PROMPT='${NEWLINE}%F{cyan}%f${NEWLINE}$(exitstatus) ' RPROMPT='%F{blue} %~ %f%k'
#PROMPT='${NEWLINE}%F{cyan}%n%f${NEWLINE}' RPROMPT='%K{yellow}%F{black} %~ %f%k'
#'$(exitstatus) '

source ~/.zsh/alias.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/pimp.zsh
