    git clone --recursive https://github.com/rodrigozhou/.vim.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    cd ~/.vim
    git submodule foreach git pull origin master
    vim +PluginInstall
