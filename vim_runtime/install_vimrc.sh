#!/bin/bash
set -e

echo 'set runtimepath+=~/.dotfiles/vim_runtime
set runtimepath+=~/.dotfiles/vim_runtime/after
set runtimepath+=~/.fzf
set packpath+=~/.dotfiles/vim_runtime
source ~/.dotfiles/vim_runtime/vimrcs/vimrc.vim
source ~/.dotfiles/vim_runtime/vimrcs/plugins_config.vim
source ~/.dotfiles/vim_runtime/vimrcs/gvimrc.vim' > ${HOME}/.vimrc

echo "Installed the Vim configuration successfully!"
