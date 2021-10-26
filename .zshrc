
# Path to your oh-my-zsh installation.
export ZSH="/Users/ter0m/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"


# Standard plugins can be found in $ZSH/plugins/
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

ZSH_DISABLE_COMPFIX="true"

source $ZSH/oh-my-zsh.sh



# User configuration

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi


export PATH=/Users/ter0m/bin:$PATH

#alias mc='EDITOR=subl mc'

export EDITOR=nvim
export VISUAL="$EDITOR"
