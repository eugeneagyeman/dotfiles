source $HOME/.dotfiles/scripts
source /Users/eugeneagyeman/.docker/init-zsh.sh || true # Added by Docker Desktop
export MVN_HOME=/opt/apache-maven-3.9.0

# workspace (code folder)
export WORKSPACE="$HOME/code"

# Go
export GOPATH="$WORKSPACE/go"
export GOBIN="$WORKSPACE/go/bin"
export GOCACHE="$HOME/.cache/go-build"

# fzf
source <(fzf --zsh)

# Auto Completion
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search
autoload -U compinit; compinit
eval "$(zoxide init zsh)"

# Options
setopt auto_cd

# Prompt
setopt prompt_subst
PROMPT='%F{green}%B%2~ $(git_branch_name)%b > '
