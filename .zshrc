# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Aliases
# Some more basic aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
  alias vi='nvim'
fi

alias oplint='wget -c https://raw.githubusercontent.com/PyCQA/pylint/master/pylintrc'
alias opysetup='pipenv install && pipenv shell'
alias opyinst='pipenv install --dev --pre black && pipenv install --dev neovim pylint ptpython pytest'

#==================
# brew install coreutils for this to work!
alias ls='gls --color'
alias l='ls -1rt'
alias ll='ls -lrt'

# set LANG so things display properly in tmux sessions
alias tmux='LANG="en_US.UTF-8" tmux'

# Standard stuff
alias c='clear'
alias -g dtree='tree -aCFl --charset=UTF8 --du --si'
alias -g G='| grep'
alias -g J='| jq'

# tmux
alias ta='tmux attach -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'
alias tksv='tmux kill-server'
alias tkss='tmux kill-session -t'

# docker
alias dcp='docker-compose'
alias dps='docker ps'
alias dpa='docker ps -a'
alias dlg='docker logs'

##############################
# Zplug
##############################

# Check if zplug is installed
if [[ ! -d ~/.zplug ]]; then
  git clone https://github.com/zplug/zplug ~/.zplug
  source ~/.zplug/init.zsh && zplug update --self
fi

# Essential
source ~/.zplug/init.zsh

# Zplug plugins
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug denysdovhan/spaceship-zsh-theme, use:spaceship.zsh, from:github, as:theme
zplug "lib/completion", from:oh-my-zsh
zplug "lib/history", from:oh-my-zsh
zplug "lib/key-bindings", from:oh-my-zsh
#zplug "plugins/git", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting", defer:3

# Install packages that have not been installed yet
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    else
        echo
    fi
fi

zplug load

# zsh-history-substring-search configuration
# (put whatever configuration you want here!)
#bindkey '^[[A' history-substring-search-up
#bindkey '^[[B' history-substring-search-down
#HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1

# remove highlighted percent sign on partial lines
# unsetopt PROMPT_SP
#PROMPT_EOL_MARK=""

# Case insensitive completion
#zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z-_}={A-Za-z_-}'

### Environment
#===============
# Amazon - AWS command line tool
# export EC2_HOME="/usr/local/ec2/ec2-api-tools-1.7.3.0"
# export PATH="$PATH:$EC2_HOME/bin"

# auto complete aws commands
# export JAVA_HOME=$(/usr/libexec/java_home)

# Standard stuff
export VISUAL=vim
export EDITOR="$VISUAL"

# Python virtual env
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=false
# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
export WORKON_HOME=~/Dev/Python3Envs
source /usr/local/bin/virtualenvwrapper.sh

# Set CLICOLOR if you want Ansi Colors in iTerm2 
export CLICOLOR=1
#export TERM=xterm-256color        # for common 256 color terminals (
# e.g. gnome-terminal,
# )
#export TERM=screen-256color       # for a tmux -2 session (also for screen)
# Golang
# export GOPATH=$HOME/Documents/Dev/Golang
# export GOROOT=/usr/local/opt/go/libexec

# Kubernetes
if [ $commands[kubectl] ]; then
  source <(kubectl completion zsh)
fi
if [ $commands[minikube] ]; then
  source <(minikube completion zsh)
fi

### Setup
# brew install coreutils for this to work!
if [[ -e ~/.gruvbox.dircolors ]]; then
  eval $(gdircolors ~/.gruvbox.dircolors)
fi
#
# Add gotools to path
# export PATH="$PATH:$GOPATH/bin:$GOROOT/bin"

# Add PostgreSQL binaries to the PAth
# export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

export NVM_DIR="/Users/orobert/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

eval $(thefuck --alias)

# Load rbenv automatically by appending
# # the following to ~/.zshrc:
eval "$(rbenv init -)"
