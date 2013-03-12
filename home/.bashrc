source ~/.bash/brew
source ~/.bash/rbenv
source ~/.bash/ls
source ~/.bash/hitch
source ~/.bash/zeus

# HISTOCONTROL - history settings
#   ignoredups only records each command once in the history
#   ignorespace ignore empty commands
HISTCONTROL=ignoredups:ignorespace

export PS1='\n\D{%d/%m %k:%M:%S}\n\[\e[1;32m\][\u @ \w]\[\e[0m\]$(__git_ps1 " (%s)") '

[ -e ~/.bash_local ] && source ~/.bash_local
