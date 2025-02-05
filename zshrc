#!/usr/bin/env zsh
# |== ZSHRC Init Cofiguration File ==| #

# Directories
ZSH_PATH="${HOME}/Repos/zsh-ril"
# Source utility
src() { [[ -f "$1" ]] && source "$1"; }

# |- Non-interactive shell modules / config

# Utility
src "${ZSH_PATH}/utilities"
# Base enviroment
src "${ZSH_PATH}/ansi_escape_sequences"
src "${ZSH_PATH}/ansi"
src "${ZSH_PATH}/envvars"
src "${ZSH_PATH}/paths"

# end zsh config if non-interactive
[[ $- != *i* ]] && return

# |- Interactive shell modules / config

# Program Setup
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Prompts
eval "$(oh-my-posh init zsh --config /home/rc/.config/oh-my-posh/robbyrussell.omp.json)"

# # omz plugins setup
# # see: https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins
# plugins=(
# 	# bundled plugins
#     colored-man-pages
#     # alias-finder
#     command-not-found
#     copyfile
#     copypath
#     extract
#     # fzf
#     # globalias
#     # jump
#     man
#     sudo
#     # thefuck
#     # tldr
#     # vi-mode
#     zsh-interactive-cd
# )

# |- Main configuration

# ZSH Options
src "${ZSH_PATH}/options"


# Functions
src_directory "${ZSH_PATH}/functions"

# Aliases
src_directory "${ZSH_PATH}/aliases"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# eval "$(oh-my-posh init zsh --config ~/.config/rilcritch.omp.toml)"

# Startup
# macchina

# vim:fileencoding=utf-8:foldmethod=marker

