" vimrc
"
" Created by Rodrigo Zhou
"
" https://github.com/rodrigozhou/.vim

set nocompatible                " make vim vim
set history=64
set encoding=utf-8
set clipboard=unnamed           " use OS clipboard
set backspace=indent,eol,start  " avoid backspace problems

if has('mouse')
    set mouse=a                 " enable mouse if available
endif

syntax enable
set showmode                    " show current mode
set wildmenu                    " command-line completion
set wildmode=longest,list,full
set laststatus=2                " always show two status lines
set splitbelow                  " default horizontal split to below
set splitright                  " default vertical split to right

set diffopt=filler,vertical     " diff options

set number                      " show line number
set ruler                       " show current cursor position
set showcmd                     " show incomplete commands
set cursorline                  " highlight cursor line
set linebreak                   " smart line break
set showmatch                   " show matching bracket

if exists('+colorcolumn')
    set colorcolumn=81          " set vertical line if possible
endif

set incsearch                   " highlight matches while typing
set ignorecase                  " case insensitive during searches
set smartcase                   " be sensitive if there is capital letters

set expandtab                   " replace tab with spaces
set shiftwidth=4                " default shift width for indenting
set softtabstop=4               " <TAB> and <BS> behaviors
set tabstop=8                   " width of <TAB> character
set smarttab                    " smarter tab levels
set autoindent                  " copy indentation of previous line
set cindent                     " C style indenting
set cinoptions+=g0.5s,h0.5s

set nowritebackup               " no backup file before writing to disk
set nobackup                    " no backup file
set noswapfile                  " no swap file

if has('gui_running')
    set autochdir               " auto change the current working dictory
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
set runtimepath+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" Better status line
Plugin 'bling/vim-airline'

" Fuzzy finder
Plugin 'kien/ctrlp.vim'
let g:ctrlp_working_path_mode = 'ra'

" Simpler way to move inside a file
Plugin 'Lokaltog/vim-easymotion'
let g:EasyMotion_smartcase = 1

" Autocomplete with <Tab>
Plugin 'ervandew/supertab'

" Bindings to toggle comments
Plugin 'tomtom/tcomment_vim'
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

" Syntax checker
Plugin 'scrooloose/syntastic'
let g:syntastic_check_on_wq = 0

" Support for HTML5
Plugin 'othree/html5.vim'

" Zen coding
Plugin 'mattn/emmet-vim'

" Theme
Plugin 'altercation/vim-colors-solarized'
set background=dark
silent! colorscheme solarized

filetype plugin indent on
" }}} Vundle
