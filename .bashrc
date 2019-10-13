# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

PS1='\[\e[1;32m\][\u:\w]\$\[\e[m\] '
TERM="xterm-256color"

# User specific aliases and functions
alias grep='grep --color=auto'
alias ls='ls --color'
alias la='ls -A'
alias ll='ls -lh'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
