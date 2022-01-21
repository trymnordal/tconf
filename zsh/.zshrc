# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#
alias ls="ls --color=auto"
alias ll="ls -l --color=auto"
alias la="ls -la --color=auto"

alias tmux="tmux -2"

autoload -U compinit
compinit

source $ZDOTDIR/.history.zsh
source $ZDORDIR/.aliases

## never ever beep ever
setopt NO_BEEP

## prompt style
PROMPT='%F{111}%B%n%b%f%B:%b%F{156}%B%~%b%f %B»%b '

## history search on arrow keys
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search
bindkey "${terminfo[kcud1]}" down-line-or-beginning-search

## case agnostic completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' special-dirs true

fpath=(/home/trym/.tconfig/zsh/zsh-completions $fpath)

source ~/.tconfig/zsh/zsh-syntax-highlighting/zsh-autosuggestions.zsh

cd $HOME
