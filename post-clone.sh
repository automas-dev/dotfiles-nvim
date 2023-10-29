#!/bin/bash

# Exit if any command fails
set -e

cd "$HOME"

ln -sfT "$HOME/.config/nvim" .vim
ln -sfT "$HOME/.config/nvim/init.vim" .vimrc

nvim +'PlugInstall --sync' +qa
nvim +'CocInstall' +qa
