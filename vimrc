" vimrc
"
" Created by Rodrigo Zhou
"
" https://github.com/rodrigozhou/.vim

let mapleader = ','
set nocompatible                " make vim vim
set history=128
set encoding=utf-8
set clipboard=unnamed           " use OS clipboard
set backspace=indent,eol,start  " avoid backspace problems
set background=light

set nowritebackup               " no backup file before writing to disk
set nobackup                    " no backup file
set noswapfile                  " no swap file

if has('mouse')
    set mouse=a                 " enable mouse if available
endif

syntax enable
set showmode                    " show current mode
set wildmenu                    " command-line completion
set laststatus=2                " always show two status lines
set splitbelow                  " default horizontal split to below
set splitright                  " default vertical split to right
set hidden                      " allow to change buffers without saving

set diffopt=filler,vertical     " vim diff options

set number                      " show line number
set ruler                       " show current cursor position
set showcmd                     " show incomplete commands
set linebreak                   " smart line break
set showmatch                   " show matching bracket
set signcolumn=yes              " always show sign column (for VCS)

set pastetoggle=<leader>z
set lazyredraw
set synmaxcol=200

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

" no highlight line in quickkfix window
highlight QuickFixLine  cterm=none ctermbg=256 guibg=#ffff00

" clear background for sign column
highlight clear SignColumn
highlight DiffAdd       cterm=bold ctermbg=none ctermfg=119
highlight DiffDelete    cterm=bold ctermbg=none ctermfg=167
highlight DiffChange    cterm=bold ctermbg=none ctermfg=227

" Custom settings for web development
autocmd FileType html,css,javascript      setl noet sw=2 sts=2 ts=2 nocin si

" Custom settings for tex projects
autocmd FileType plaintex,tex,bib,bst,ist setl sw=2 sts=2 ts=4
" let g:tex_flavor='tex'

" smooth scrolling
map <ScrollWheelUp>   <C-y>
map <ScrollWheelDown> <C-e>

" sane movement with wrap turned on
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" buffer movement
nnoremap <C-h> :bprev<CR>
nnoremap <C-l> :bnext<CR>

" reselect the visual selected block after indenting
vnoremap < <gv
vnoremap > >gv

" easy switch off the current search
nnoremap <silent> <Leader>/ :nohlsearch<CR>

" easy apply macro
nnoremap <leader>q @q
vnoremap <leader>q :norm @q<CR>

" grep
if executable('rg')
    " use ripgrep over grep
    set grepprg="rg --vimgrep --no-heading --smart-case"
    command -nargs=+ -complete=file -bar Rg silent! grep! <args>|cwindow|redraw!
elseif executable('ag')
    " use ag over grep
    set grepprg="ag --nogroup --nocolor"
    command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
endif

" TODO it does not work with python3 venv
" python with virtualenv support
" py << EOF
" import os
" import sys
" if 'VIRTUAL_ENV' in os.environ:
"     project_base_dir = os.environ['VIRTUAL_ENV']
"     activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"     execfile(activate_this, dict(__file__=activate_this))
" EOF

" load plugins
runtime plugins.vim             " vim-plug
