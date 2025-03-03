#!/user/bin/env zsh
# |== ZSH Evironment ==| #

# ZSH Evironment -> the first file to run in the user zsh startup files
#
# author: RilCritch

## Base Enviroment

## ZSH
export ZDOTDIR="${HOME}/.config/zsh"
export HISTFILE="${ZDOTDIR}/history"

## General
export EDITOR='nvim'
export VISUAL='nvim'
export LANG=en_US.UTF-8
export MANPAGER="page -t man" # neovim as man pager
# export HISTCONTROL=ignoreboth:erasedups
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"
# man 2 select


## RilCritch's Environment

# Directories
export BASH_HOME="${HOME}/Repos/bash-ril"
export ZSH_HOME="${HOME}/Repos/zsh-ril"

# User info
export USER_NAME="RilCritch" #: preferred name


## XDG Directories {{{

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

# }}}

## Config Directories {{{

export MOST_INITFILE="$HOME/.config/most/most.rc" # most config
export RIPGREP_CONFIG_PATH="${HOME}/.config/ripgrep/rg.conf" # ripgrep config
export NVM_DIR="$HOME/.config/nvm"
export WEZTERM_CONFIG_FILE="${HOME}/.config/wezterm/wezterm.lua"
export EZA_CONFIG_DIR="${HOME}/.config/eza"

# }}}

## Misc Applications {{{

export EZA_ICON_SPACING=1
export STARSHIP_LOG="error"

# }}}

## Move files from $HOME {{{

export CARGO_HOME="${XDG_DATA_HOME}/cargo"
export RUSTUP_HOME="${XDG_DATA_HOME}/rustup"
export GNUPGHOME="${XDG_DATA_HOME}/gnupg"
export GOPATH="${XDG_DATA_HOME}/go"
export GTK2_RC_FILES="${XDG_CONFIG_HOME}/gtk-2.0/gtkrc"
export JULIA_DEPOT_PATH="${XDG_DATA_HOME}/julia:${JULIA_DEPOT_PATH}"
export ICEAUTHORITY="${XDG_CACHE_HOME}/ICEauthority"
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}/npm/npmrc"
export PYTHONSTARTUP="${XDG_CONFIG_HOME}/python/pythonrc"

#}}}

## Gimp {{{

export GIMP2_DIRECTORY="${HOME}/.config/GIMP/2.10"

# }}}

## FZF {{{

export FZF_DEFAULT_COMMAND="fdfind"

export FZF_DEFAULT_OPTS="--header-first \
--reverse --border-label-pos=2 -i \
--cycle \
--no-scrollbar --border --height=~60% \
--prompt='󰍉 ' --pointer='' --marker='◦' \
--color='\
fg:black,fg+:-1,preview-fg:white,\
bg:-1,bg+:-1,preview-bg:-1,\
hl:cyan:dim,hl+:blue:underline,\
query:cyan,disabled:cyan:dim,\
prompt:cyan,pointer:blue,marker:blue:dim,\
info:bright-white,spinner:yellow,\
border:white,separator:bright-black:dim,scrollbar:8:dim,\
header:cyan,label:blue:bold,preview-label:cyan'"

export FZF_COMPLETION_OPTS="--header-first \
--reverse -i \
--cycle --border='none' \
--no-scrollbar --height=7 \
--pointer='' --marker='󰮺' \
--color='\
fg:black,fg+:-1,preview-fg:white,\
bg:-1,bg+:-1,preview-bg:-1,\
hl:cyan:dim,hl+:blue:underline,\
query:cyan,disabled:cyan:dim,\
prompt:cyan,pointer:blue,marker:blue:dim,\
info:bright-white,spinner:yellow,\
border:white,separator:bright-black:dim,scrollbar:8:dim,\
header:cyan,label:blue:bold,preview-label:cyan'"

#}}}

## Programming Langs {{{

# python
export WORKON_HOME="$HOME/documents/programming/pyenvs"

# }}}

# export GDK_DPI_SCALE=0.5
# export QT_FONT_DPI=96

# vim:fileencoding=utf-8:foldmethod=marker
