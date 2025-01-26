#!/usr/bin/env zsh
# |== ZSHRC Init Cofiguration File ==| #

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# |- Directories

ZSH_PATH="${HOME}/Repos/zsh-ril"


# |- Non-interactive shell modules / config

# base enviroment
[[ -f "${ZSH_PATH}/envvars" ]] && . "${ZSH_PATH}/envvars"
[[ -f "${ZSH_PATH}/paths" ]] && . "${ZSH_PATH}/paths"
[[ -f "${ZSH_PATH}/ansi_escape_sequences" ]] && . "${ZSH_PATH}/ansi_escape_sequences"

# end zsh config if non-interactive
[[ $- != *i* ]] && return


# |- Interactive shell modules / config

# Oh my zsh path
export ZSH="${ZSH_PATH}/omz/oh-my-zsh"
export ZSH_CUSTOM="${ZSH_PATH}/omz/custom"
# export ZSH_CACHE_DIR=""

# Oh my zsh settings
[[ -f "${ZSH_PATH}/omz/settings" ]] && . "${ZSH_PATH}/omz/settings"

# omz plugins setup
# see: https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins
plugins=(
	# bundled plugins
    colored-man-pages
    # alias-finder
    command-not-found
    copyfile
    copypath
    extract
    # fzf
    # globalias
    # jump
    man
    sudo
    # thefuck
    # tldr
    # vi-mode
    zsh-interactive-cd

	# 3rd party plugins
)

# plugin configs
[[ -f "${ZSH_PATH}/omz/plugin-init" ]] && . "${ZSH_PATH}/omz/plugin-init"


# Initialize oh my zsh
source $ZSH/oh-my-zsh.sh


# |- User Cofiguration - after omz for overrides

# ZSH Options
[[ -f "${ZSH_PATH}/options" ]] && . "${ZSH_PATH}/options"

# Utility Functions
[[ -f "${ZSH_PATH}/utilities" ]] && . "${ZSH_PATH}/utilities"

# Functions
src_directory "${ZSH_PATH}/functions"

# Aliases
src_directory "${ZSH_PATH}/aliases"

# Starship
eval "$(starship init zsh)"

# vim:fileencoding=utf-8:foldmethod=marker
