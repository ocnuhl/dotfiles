PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:/usr/bin:/usr/sbin:/bin:/sbin"
PS1="\[\e[1;32m\][\u:\w]\$\[\e[m\] "
[ -n "$SSH_TTY" ] && PS1="\[\e[1;34m\][\u:\w]$\[\e[m\] "
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
alias envg="env |grep -i"
alias free="free -h"
alias grep="grep --color=auto"
alias psg="ps -ef |grep -i"
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

getproxy() {
    echo "http_proxy=$http_proxy"
    echo "https_proxy=$https_proxy"
}

setproxy() {
    if [ -z "$1" ]; then
        unset http{,s}_proxy
    elif [ "8" = "$1" ]; then
        export http{,s}_proxy=http://127.0.0.1:8888
    elif [ "9" = "$1" ]; then
        export http{,s}_proxy=http://127.0.0.1:8889
    else
        export http{,s}_proxy="$1"
    fi
    getproxy
}
