PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:/usr/bin:/usr/sbin:/bin:/sbin"
PS1='\[\e[1;32m\][${http_proxy:-DIRECT}][\w]\$\[\e[m\] '
HISTCONTROL=ignoreboth:erasedups
export VISUAL=vim

alias ls="ls --color=auto"
alias la="ls -A"
alias ll="ls -lh"
alias lla="ls -lhA"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias cxz="time tar -I 'xz -T0 -8 -M 16GB' -cf"
alias del="trash"
alias df="df -h"
alias du="du -sh"
alias dus="du * |sort -h"
alias envg="env |grep -i"
alias free="free -h"
alias grep="grep --color=auto"
alias ip="ip -c=auto"
alias psg="ps aux |grep -i"
alias sst="ss -tpln"

alias ga="git add"
alias gaa="git add -A"
alias gb="git branch"
alias gc="git commit -v"
alias gc!="git commit -v --amend"
alias gcl="git clone --depth 1"
alias gco="git checkout"
alias gd="git diff"
alias gds="git diff --staged"
alias glg="git log"
alias grb="git rebase"
alias grbi="git rebase -i"
alias grst="git restore --staged"
alias grv="git remote -v"
alias gsh="git show"
alias gsm="git submodule"
alias gst="git status"

setproxy() {
    if [ -z "$1" ]; then
        unset http{,s}_proxy
    elif [ "8" = "$1" ]; then
        export http{,s}_proxy=http://me:3128
    elif [ "9" = "$1" ]; then
        export http{,s}_proxy=http://me:3129
    else
        export http{,s}_proxy=http://"$1"
    fi
}
