# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

ZSH_THEME="Soliah"

plugins=(git)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh

# git
alias gs="git status --short"
alias gss="git status"
alias gl='git log --pretty=format:"%h - %ar, %an : %s" --graph'
alias gco="git checkout"
alias gcob="git checkout -b"
alias gp="git pull"
alias ga="git add"
alias gst="git stash"
alias gd="git diff"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
