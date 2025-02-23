#!/usr/bin/env zsh
# |== ZSHRC Init Cofiguration File ==| #

zmodload zsh/zprof

# Directories
ZSH_PATH="${HOME}/Repos/zsh-ril"
# Source utility
src() { [[ -f "$1" ]] && source "$1"; }

autoload -Uz compinit && compinit

# Utility
src "${ZSH_PATH}/utilities"
# Base enviroment
src "${ZSH_PATH}/ansi_escape_sequences"
src "${ZSH_PATH}/ansi"
# src "${ZSH_PATH}/zshenv"
src "${ZSH_PATH}/paths"



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

# Line Editor
src "${ZSH_PATH}/line_editor"

# Misc
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# eval "$(oh-my-posh init zsh --config ~/.config/rilcritch.omp.toml)"

# Plugins
src_directory "${ZSH_PATH}/plugins"

# Program Setup
fpath+="${ZDOTDIR}/zfuncs"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Prompts
eval "$(oh-my-posh init zsh --config /home/rc/.config/oh-my-posh/xtoys.omp.json)"

# Key Env Vars
export HISTSIZE=10000
export SAVEHIST=20000

# Startup
# macchina

zprof # investigate slow zshrc start time

# vim:fileencoding=utf-8:foldmethod=marker

