# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# If sensible_bash file source it
if [ -f ~/.sensible.bash ]; then
   source ~/.sensible.bash
fi

if [ -f ~/.bashrc_profile ]; then
   source ~/.bashrc_profile
fi

set colored-stats on

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# PROMPT
eval "$(starship init bash)"

# EDITOR
export VISUAL="nvim"

# >>>> Vagrant command completion (start)
. /opt/vagrant/embedded/gems/*/gems/vagrant-*/contrib/bash/completion.sh
# <<<<  Vagrant command completion (end)

# Pyenv
# export PATH="$HOME/.pyenv/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
