#!/usr/bin/env zsh
# |== ZSHRC Init Cofiguration File ==| #


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
src "${ZSH_PATH}/paths"

# zfuncs
fpath+="${ZDOTDIR}/zfuncs"

# Programs
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(fnm env --use-on-cd --shell zsh)"

# Antitode Plugin Manager
# src ${ZDOTDIR:-~}/antidote/antidote.zsh # source antidote to access it
# custom antitode plugins file location
ANTIDOTE_PLUGINS="${ZPLUGINS:-${ZDOTDIR:-~/$HOME/.config}}/antidote_plugins"
[[ -f "${ANTIDOTE_PLUGINS}.conf" ]] || touch "${ANTIDOTE_PLUGINS}.conf"
# Lazy-load antidote from its functions directory
fpath=(${ZDOTDIR:-~}/antidote/functions $fpath)
autoload -Uz antidote

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

# eval "$(oh-my-posh init zsh --config ~/.config/rilcritch.omp.toml)"

# Plugins
src_directory "${ZSH_PATH}/plugins"

# Prompts
eval "$(oh-my-posh init zsh --config /home/rc/.config/oh-my-posh/rc.omp.toml)"

# Key Env Vars
export HISTSIZE=10000
export SAVEHIST=20000

# Startup
# macchina

# investigate slow zshrc start time
# zmodload zsh/zprof
# zprof

# vim:fileencoding=utf-8:foldmethod=marker
