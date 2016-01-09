" Vundle {{{
set nocompatible
filetype off

set runtimepath+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

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
let g:syntastic_mode_map = { "mode": "passive" }
nnoremap <silent> <F8> :SyntasticCheck<CR>
nnoremap <silent> <F9> :SyntasticReset<CR>

" Support for HTML5
Plugin 'othree/html5.vim'

" Zen coding
Plugin 'mattn/emmet-vim'

call vundle#end()
filetype plugin indent on
" }}} Vundle
