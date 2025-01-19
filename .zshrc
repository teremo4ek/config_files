# Path to your oh-my-zsh installation.
export ZSH="~/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"


# Standard plugins can be found in $ZSH/plugins/
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

ZSH_DISABLE_COMPFIX="true"

source $ZSH/oh-my-zsh.sh

alias vi="nvim"
alias vim="nvim"
#alias ll="ls -lah"
alias ll="lsd -lAFv --group-directories-first"
alias kkk='vim $(fzf --preview="bat --color=always {}")'


# User configuration

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
fi


export PATH=~/bin:$PATH
export EDITOR=nvim
export VISUAL="$EDITOR"

# yazi
# https://yazi-rs.github.io/docs/quick-start
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}


