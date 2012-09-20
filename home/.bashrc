# HISTOCONTROL - history settings
#   ignoredups only records each command once in the history
#   ignorespace ignore empty commands
HISTCONTROL=ignoredups:ignorespace

case $OSTYPE in
  darwin*)
    alias ls='ls -aG'
  ;;
  linux-gnu)
    alias ls='ls -a --color=auto'
  ;;
esac

export PS1='\n\D{%d/%m %k:%M:%S}\n\[\e[1;32m\][\u @ \w]\[\e[0m\]$(__git_ps1 " (%s)") '

[ -e ~/.bash_local ] && source ~/.bash_local
