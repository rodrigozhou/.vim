" vimrc
"
" Created by Rodrigo Zhou
"
" https://github.com/rodrigozhou/.vim

runtime plugins.vim             " Vundle

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
set laststatus=2                " always show two status lines
set splitbelow                  " default horizontal split to below
set splitright                  " default vertical split to right

set diffopt=filler,vertical     " diff options

set number                      " show line number
set ruler                       " show current cursor position
set showcmd                     " show incomplete commands
set linebreak                   " smart line break
set showmatch                   " show matching bracket

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

" Custom settings for web development
autocmd FileType html,css,javascript setl noet sw=2 sts=2 ts=2 nocin si

set nowritebackup               " no backup file before writing to disk
set nobackup                    " no backup file
set noswapfile                  " no swap file

" sane movement with wrap turned on
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" reselect the visual selected block after indenting
vnoremap < <gv
vnoremap > >gv

" easy switch off the current search
nnoremap <silent> <Leader>/ :nohlsearch<CR>

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
