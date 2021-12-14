#! /bin/bash

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


# General
alias op='xdg-open'
complete -o default op
# Add an "alert" alias for long running commands.  Use like so: sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias ...='cd ../../'
alias ....='cd ../../../'

alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'

# Env
alias va='source ./env/bin/activate'
alias vd='deactivate'

# Git
alias gs='git status'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gd='git diff'
alias gdc='git diff --cached'
alias gst='git stash'

# Python
alias py='python3'
complete -o default py

# Nvim
alias vim='nvim'

# Bat
alias bat='bat --theme=base16'

# Icat
alias icat="kitty +kitten icat"
