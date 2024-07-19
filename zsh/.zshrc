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
# TO BE COMPLETED

# Auto Completion
autoload -U compinit; compinit
eval "$(zoxide init zsh)"

# Options
setopt auto_cd

# Prompt
setopt prompt_subst
PROMPT='%F{green}%B%2~ $(git_branch_name)%b > '
