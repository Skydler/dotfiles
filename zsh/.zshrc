# Use powerline
USE_DEFAULT_PROMPT="false"
USE_POWERLINE="true"

# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi

# Use zsh autosuggestions
if [[ -e /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
  source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# Use manjaro zsh prompt
if [[ $USE_DEFAULT_PROMPT == true ]]; then
  if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
    source /usr/share/zsh/manjaro-zsh-prompt
  fi
fi

if [[ -e ~/.zsh_aliases ]]; then
  source ~/.zsh_aliases
fi

eval "$(starship init zsh)"

export VISUAL=nvim

eval "$(pyenv init -)"
