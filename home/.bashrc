source ~/.bash/brew
# brew bash-completion must be installed
source $(brew --prefix)/etc/bash_completion
source ~/.bash/rbenv
source ~/.bash/ls
source ~/.bash/hitch
source ~/.bash/zeus
source ~/.bash/tmux
source ~/.bash/docker-sync

# HISTOCONTROL - history settings
#   ignoredups only records each command once in the history
#   ignorespace ignore empty commands
HISTCONTROL=ignoredups:ignorespace

export ANDROID_HOME=~/Library/Android/sdk/
export PATH=$PATH:~/android-sdks/platform-tools/
export PATH=$PATH:~/android-sdks/tools/

export PS1='\n\D{%d/%m %k:%M:%S}\n\[\e[1;32m\][\u @ \w]\[\e[0m\]$(__git_ps1 " (%s)") '

[ -e ~/.bash_local ] && source ~/.bash_local

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/bill/Code/jsmbars/boss/app/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /Users/bill/Code/jsmbars/boss/app/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/bill/Code/jsmbars/boss/app/serverless/node_modules/tabtab/.completions/sls.bash ] && . /Users/bill/Code/jsmbars/boss/app/serverless/node_modules/tabtab/.completions/sls.bash
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /Users/bill/Code/jsmbars/boss/app/serverless/node_modules/tabtab/.completions/slss.bash ] && . /Users/bill/Code/jsmbars/boss/app/serverless/node_modules/tabtab/.completions/slss.bash
alias ctags='/usr/local/bin/ctags'
