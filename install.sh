#!/bin/bash

git clone https://github.com/rodrigozhou/.vim.git $HOME/.vim
git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
ln -s $HOME/.vim/vimrc $HOME/.vimrc
vim +PluginInstall
