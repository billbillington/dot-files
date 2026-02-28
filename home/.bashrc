export PATH="$HOME/.gem/ruby/2.6.0/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Applications/iTerm.app/Contents/Resources/utilities:$HOME/android-sdks/platform-tools/:$HOME/android-sdks/tools/:/opt/homebrew/bin"
# removes annoying "zsh: command not found: brew" message when using bash in macOS
export BASH_SILENCE_DEPRECATION_WARNING=1
source ~/.bash/brew
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
export PATH=$PATH:~/.cargo/bin
export PATH="$PATH:$HOME/.local/bin"
export EDITOR=nvim

export PS1='\n\D{%d/%m %k:%M:%S}\n\[\e[1;32m\][\u @ \w]$ \[\e[0m\]'

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

# pnpm
export PNPM_HOME="/Users/bill/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# ZVM
export ZVM_INSTALL="$HOME/.zvm/self"
export PATH="$PATH:$HOME/.zvm/bin"
export PATH="$PATH:$ZVM_INSTALL/"
