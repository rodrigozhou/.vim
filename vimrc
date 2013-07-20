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
set showmode            " show current mode
set wildmenu            " command-line completion
set wildmode=longest,list,full
set laststatus=2        " always show two status lines
set splitbelow          " default horizontal split to below
set splitright          " default vertical split to right

" diff options
set diffopt=filler,vertical

set number              " show line number
set showmatch           " show matching bracket
set ruler               " show current cursor position
set showcmd             " show incomplete commands
set cursorline          " highlight cursor line

if exists('+colorcolumn')
    set colorcolumn=81  " vertical line
endif

set incsearch           " highlight matches while typing
set hlsearch            " highlight search
set ignorecase          " case insensitive during searches
set smartcase           " be sensitive if there is capital letters

set expandtab           " replace tab with spaces
set shiftwidth=4        " default shift width for indenting
set softtabstop=4       " <TAB> and <BS> behaviors
set tabstop=8           " width of <TAB> character
set smarttab            " smarter tab levels
set autoindent          " copy indentation of previous line
set cindent             " C style indenting
set cinoptions=g0.5s,c0

set nowritebackup       " no backup file right before writing to disk
set nobackup            " no backup file
set noswapfile          " no swap file

if has('gui_running')
    set autochdir       " auto change the current working dictory
endif

" sane movement with wrap turned on
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" alternative way to change buffers
noremap <C-Tab>   :bn<CR>
noremap <C-S-Tab> :bp<CR>

" reselect the visual selected block after indenting
vnoremap < <gv
vnoremap > >gv

" easy switch off the current search
nnoremap <silent> <Leader>/ :nohlsearch<CR>

" Vundle {{{
filetype off
set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" my bundles
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'ervandew/supertab'

Bundle 'techlivezheng/vim-plugin-minibufexpl'
cnoreabbrev mbd MBEbd
cnoreabbrev mbw MBEbw
cnoreabbrev mbun MBEbun

Bundle 'tomtom/tcomment_vim'
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

Bundle 'mattn/zencoding-vim'
let g:user_zen_leader_key='<C-E>'

Bundle 'altercation/vim-colors-solarized'
if &t_Co > 255
    let g:solarized_termcolors=256
    set bg=dark
    colorscheme solarized
endif

filetype plugin indent on
" }}} Vundle
