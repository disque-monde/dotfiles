#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/plugins/fast-syntax-highlighting.plugin.zsh #conf dans le file fast-highlight
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^ ' autosuggest-accept
#ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
#typeset -A ZSH_HIGHLIGHT_STYLES
#ZSH_HIGHLIGHT_STYLES[path]='fg=3'
#ZSH_HIGHLIGHT_STYLES[alias]='fg=7,bold'
#ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=1'
#ZSH_HIGHLIGHT_STYLES[command]='fg=7,bold'
#ZSH_HIGHLIGHT_STYLES[precommand]='fg=7,bold'
#ZSH_HIGHLIGHT_STYLES[builtin]='fg=7,bold'
#ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=113'
#ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=113'
#ZSH_HIGHLIGHT_STYLES[function]='fg=7'
#ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=1'
#ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=1'
#ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=1'
#ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=1'
#source /usr/share/nvm/init-nvm.sh

export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/jb/.vimpkg/bin:/home/jb/.gem/ruby/2.4.0/bin

PATH="/home/jb/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/jb/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/jb/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/jb/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/jb/perl5"; export PERL_MM_OPT;


#source $(dirname $(gem which colorls))/tab_complete.sh

#zle -C colorls .complete-word colorls_completion
#bindkey '^x^i' colorls

  # define the function that will be called
#colorls_completion() {
  #compadd $(colorls --'*'-completion-bash="$2" )
#}

#
#Blur Tilix in KDE
#
if [[ $(ps --no-header -p $PPID -o comm) =~ tilix ]]; then
    for wid in $(xdotool search --pid $PPID); do
        xprop -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 -id $wid; done
fi
