" vim-plug {{{
call plug#begin('~/.vim/plugged')

" Fuzzy finder
Plug 'kien/ctrlp.vim'
let g:ctrlp_working_path_mode = 'ra'

" Simpler way to move inside a file
Plug 'Lokaltog/vim-easymotion'
let g:EasyMotion_smartcase = 1

" Autocomplete with <Tab>
Plug 'ervandew/supertab'

" Bindings to toggle comments
Plug 'tomtom/tcomment_vim'
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

" Syntax checker
Plug 'scrooloose/syntastic', { 'on': 'SyntasticCheck' }
let g:syntastic_mode_map = { "mode": "passive" }
nnoremap <silent> <F8> :SyntasticCheck<CR>
nnoremap <silent> <F9> :SyntasticReset<CR>

" Support for HTML5
Plug 'othree/html5.vim', { 'for': ['php', 'html'] }

" Zen coding
Plug 'mattn/emmet-vim', { 'for': ['php', 'html', 'css'] }

call plug#end()
" }}} vim-plug
