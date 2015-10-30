#!/bin/bash

git clone https://github.com/rodrigozhou/.vim.git $HOME/.vim
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
ln -s $HOME/.vim/vimrc $HOME/.vimrc
vim +PluginInstall +qall
