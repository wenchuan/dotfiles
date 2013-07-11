# '.zshrc' is sourced by interactive zsh shell to set up zsh aliases,
#          functions, key-bindings, options.

# get cores
ulimit -c unlimit

# set up variables
source ~/.zsh/variables

# set up aliases
source ~/.zsh/aliases

# set up colors
source ~/.zsh/colors

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1048576
SAVEHIST=65536
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/wenchuan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

setopt autocd
setopt auto_pushd
setopt correct
setopt long_list_jobs
setopt share_history
setopt append_history
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt print_exit_value

# vim: set ft=zsh
