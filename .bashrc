PATH="/usr/local/bin:/bin"
PS1="\[\e[1;32m\][\u:\w]\$\[\e[m\] "
HISTCONTROL=ignoreboth:erasedups
export VISUAL=vim

if [ -z "$HOSTIP" ]; then
	export HOSTIP=$(grep nameserver /etc/resolv.conf | cut -d ' ' -f 2)
	export DISPLAY=$HOSTIP:0
fi

alias ls="ls --color=auto"
alias la="ls -A"
alias ll="ls -lh"
alias lla="ls -lhA"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias del="trash"
alias df="df -h"
alias du="du -sh"
alias free="free -h"
alias grep="grep --color=auto"
alias psg="ps -ef |grep -i"

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
alias gst="git status"
