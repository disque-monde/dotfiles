#ls automatique à cd
xs() {
  cd "$@"
  ls
}

vpnmanage(){
  if [[ "$1" == "start" ]]; then
    echo "ip: "; curl ifconfig.co
    echo "Lancement du VPN..."
    sudo nmcli connection up nl.protonvpn.com.udp1194.ovpn #> /dev/null 2>&1
    echo "ip: "; curl ifconfig.co
  elif [[ "$1" == "stop" ]]; then
    echo "ip: "; curl ifconfig.co
    echo "Arret du VPN..."
    sudo nmcli connection down nl.protonvpn.com.udp1194.ovpn > /dev/null 2>&1
    echo "ip: "; curl ifconfig.co
  fi
}

#hackaide
hackaide(){
echo ""
echo "  maltego       =>  Analyse et recherche visuel"
echo "  spiderfoot    =>  Analyse et recherche OSINT visuel"
echo "  fierce        =>  Brutforce DNS"
echo "  datasploit    =>  A tool to perform various OSINT "
echo "  theHarvester  =>  E-mail, subdomain and people names harvester"
}

#Pacaide
pacaide() {
  echo ""
  echo "    --LISTE DES ALIAS PACMAN--"
  echo ""
  echo "  pi    => sudo pacman -S   = Installe le pk"
  echo "  pr    => sudo pacman -R   = Désistalle"
  echo "  prs   => sudo pacman -Rs  = Désinstalle + dependances"
  echo "  prsn  => sudo pacman -Rsn = Désinstalle + conf"
  echo "  pss   => sudo pacman -Ss  = cherche un pk dans les dépots"
  echo "  psu   => sudo pacman -Syu = syncro + mise a jour"
  echo ""
}

destroy() {
  shred -n 4 -z -u $1
}

pong(){
  ping -c 5 $1
}

extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}


