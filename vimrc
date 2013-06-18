" vimrc
"
" Created by Rodrigo Zhou
"
" https://github.com/rodrigozhou/.vim

set nocompatible
filetype off

"Bundle 'gmarik/vundle'

"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'ervandew/supertab'
"Bundle 'rstacruz/spakup', {'rtp': 'vim/'}
"Bundle 'scrooloose/syntastic'
"Bundle 'tomtom/tcomment_vim

"Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on

if has('mouse')
    set mouse=a
endif

syntax enable
set encoding=utf-8
set history=64
set showmode
set wildmenu
set laststatus=2
set splitbelow
set splitright

set number
set showmatch
set ruler
set showcmd
set cursorline

set incsearch
set hlsearch
set ignorecase
set smartcase

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=8
set smarttab
set cindent

vnoremap < <gv
vnoremap > >gv

set nowritebackup
set nobackup
set noswapfile

if has('gui_running')
    set autochdir
endif
