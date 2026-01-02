export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export LANG="en_US.UTF-8"

export EDITOR="nvim"

alias vi="nvim"
alias vim="nvim"
alias view="nvim -R"
alias vimdiff="nvim -d"
alias n="nvim"

source <(fzf --zsh)
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

autoload -Uz compinit
compinit
alias k=kubectl
source <(kubectl completion zsh)
compdef k="kubectl"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

eval "$(zoxide init zsh)"

export PATH="/Users/anciobanu/.duckdb/cli/latest":$PATH

[[ -s "/Users/anciobanu/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/anciobanu/.sdkman/bin/sdkman-init.sh"
