alias ls='ls --color=auto'
#alias ll='ls --color=auto -lh'
alias ll='ls -l'
alias lll='ls --color=auto -lh | less'
alias la='ls --color=auto -A'
alias s='sudo'
alias systemctl='sudo systemctl'

#divers
alias rm='rm -i'
alias youtube-dl-audio='youtube-dl --extract-audio --audio-format mp3'
alias genpasswd='tr -dc '\x15-\x7e' < /dev/urandom| head -c 8 | paste'
alias putain='echo "ça va, ça va...";sleep 5;clear;echo "Calme-toi! "; sleep 3 '
alias ccat='pygmentize -g'
alias partagehttp='python3 -m http.server'
alias rgrep='grep  -n -I -R -r'
alias fgrep='grep  -n -I'
alias mi='micro'

#grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
#Systemctl
alias service='sudo systemctl'
