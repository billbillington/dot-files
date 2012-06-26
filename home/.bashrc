HISTCONTROL=ignoredups:ignorespace

alias la='ls -aG'

export PS1='\[\e[1;32m\][\u @ \w]\[\e[0m\]$(__git_ps1 " (%s)") '

[ -e ~/.bash_local ] && source ~/.bash_local
