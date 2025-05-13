#
# ~/.bashrc
#

# Some Extra Requirements:
# - bin folder
# - pokeget
# - fzf
# - bat
# - tree
# - pkgfile
# - bash-completion
# - starship
# - paru

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$PATH:~/.local/bin"

# History Size
export HISTSIZE=10192
export HISTFILESIZE=20384

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias clear='clear && echo "" && pokeget random'
alias cat='bat --color=auto'
alias parufind="paru -Slq | fzf --multi --preview='paru -Si {}' | xargs -ro paru -Si"

set -o vi

# FZF Options
export FZF_DEFAULT_OPTS="--height 70% --reverse --preview='bat --color=always {}'"
export FZF_CTRL_T_OPTS="--height 70% --reverse --no-preview"
export FZF_CTRL_R_OPTS="--height 70% --reverse --no-preview"
export FZF_ALT_C_OPTS="--height 70% --reverse --preview='tree -C -L 1 {}'"

# PKGFILE Command Not Found Suggestions
source /usr/share/doc/pkgfile/command-not-found.bash

# Bash Completion 
source /usr/share/bash-completion/bash_completion

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

PS1='[\u@\h \W]\$ '

# Starship
eval "$(starship init bash)"

echo "" && pokeget random
