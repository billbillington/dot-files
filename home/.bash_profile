source ~/.bashrc

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash" || true

export PATH="/opt/homebrew/opt/openjdk@21/bin:$PATH"
export JAVA_HOME="/opt/homebrew/opt/openjdk@21"

# Added by `rbenv init` on Mon 15 Dec 2025 21:02:51 GMT
eval "$(rbenv init - --no-rehash bash)"
