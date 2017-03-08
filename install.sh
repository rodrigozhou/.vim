#!/bin/bash

git clone https://github.com/rodrigozhou/.vim.git $HOME/.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -s $HOME/.vim/vimrc $HOME/.vimrc
vim +PlugInstall +qall
