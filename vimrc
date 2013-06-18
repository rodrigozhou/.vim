" vimrc
"
" Created by Rodrigo Zhou
"
" https://github.com/rodrigozhou/.vim

set nocompatible
set history=64
set encoding=utf-8

if has('mouse')
    set mouse=a
endif

syntax enable
set showmode        " Show current mode
set wildmenu        " Command-li completion
set wildmode=longest,list,full  " Complete with longest common string, then list, then full
set laststatus=2    " Always show two status lines
set splitbelow      " Split below
set splitright      " Split right

set number          " Show line number
set showmatch       " Show matching bracket
set ruler           " Show current cursor position
set showcmd         " Show imcomplete commands
set cursorline      " Highlight cursor line

set incsearch       " Highlight matches while typing
set hlsearch        " Highlight search
set ignorecase      " Case insensitive during searches
set smartcase       " Be sensitive if there is capital letters

set expandtab       " Replace tab with spaces
set shiftwidth=4    " Default shift width for indenting
set softtabstop=4   " <TAB> and <BS> behaviors
set tabstop=8       " Width of <TAB> character
set smarttab        " Smarter tab levels
set autoindent      " Copy indentation of previous line
set cindent         " C style indenting
set cinoptions=g0.5s,c0

" Reselect the visual selected block after indenting
vnoremap < <gv
vnoremap > >gv

set nowritebackup
set nobackup
set noswapfile

if has('gui_running')
    set autochdir
endif

filetype off

set runtimepath+=~/.vim/bundle/vundle/

" Plugins
call vundle#rc()

Bundle 'Lokaltog/vim-easymotion'
Bundle 'ervandew/supertab'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'scrooloose/syntastic'

Bundle 'tomtom/tcomment_vim'
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

Bundle 'altercation/vim-colors-solarized'
if &t_Co==256
    let g:solarized_termcolors=256
endif
set bg=dark
colorscheme solarized

filetype plugin indent on
