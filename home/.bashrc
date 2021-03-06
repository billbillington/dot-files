source ~/.bash/brew
# brew bash-completion must be installed
source $(brew --prefix)/etc/bash_completion
source ~/.bash/rbenv
source ~/.bash/ls
source ~/.bash/hitch
source ~/.bash/zeus
source ~/.bash/tmux

# HISTOCONTROL - history settings
#   ignoredups only records each command once in the history
#   ignorespace ignore empty commands
HISTCONTROL=ignoredups:ignorespace

export ANDROID_HOME=~/Library/Android/sdk/
export PATH=$PATH:~/android-sdks/platform-tools/
export PATH=$PATH:~/android-sdks/tools/

export PS1='\n\D{%d/%m %k:%M:%S}\n\[\e[1;32m\][\u @ \w]\[\e[0m\]$(__git_ps1 " (%s)") '

[ -e ~/.bash_local ] && source ~/.bash_local
