git clone https://github.com/rodrigozhou/.vim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule update --init
git submodule foreach git pull origin master
vim +BundleInstall!
