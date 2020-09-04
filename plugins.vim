" vim-plug {{{
call plug#begin('~/.vim/plugged')

" Buffer tab line
Plug 'ap/vim-buftabline'

" Indentation guide lines
Plug 'thaerkh/vim-indentguides'
let g:indentguides_toggleListMode=0

" Fuzzy finder
" Plug 'kien/ctrlp.vim'
" let g:ctrlp_working_path_mode = 'ra'

" fzf
Plug '/usr/local/opt/fzf'
nnoremap <C-p> :FZF<CR>

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

" cpp syntax
Plug 'bfrg/vim-cpp-modern'

" Snippets
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Latex
" Plug 'lervag/vimtex', { 'for': ['tex', 'cls', 'sty', 'bib'] }
" let g:vimtex_latexmk_callback=0


" Tagbar
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
nmap <leader>t :TagbarToggle<CR>

" Easy switch between header and code files
Plug 'derekwyatt/vim-fswitch', { 'for': ['c', 'cpp'] }
nmap <silent> <leader>of :FSHere<CR>
nmap <silent> <leader>ol :FSRight<CR>
nmap <silent> <leader>oL :FSSplitRight<CR>
nmap <silent> <leader>oh :FSLeft<CR>
nmap <silent> <leader>oH :FSSplitLeft<CR>
nmap <silent> <leader>ok :FSAbove<CR>
nmap <silent> <leader>oK :FSSplitAbove<CR>
nmap <silent> <leader>oj :FSBelow<CR>
nmap <silent> <leader>oJ :FSSplitBelow<CR>

" Python
Plug 'Vimjas/vim-python-pep8-indent', { 'for': ['python'] }

" Support for HTML5
Plug 'othree/html5.vim', { 'for': ['php', 'html'] }

" Zen coding
Plug 'mattn/emmet-vim', { 'for': ['php', 'html', 'css'] }

" Git integration
" Plug 'tpope/vim-fugitive'

" Git gutter
" Plug 'airblade/vim-gitgutter'
" let g:gitgutter_sign_column_always = 1
" let g:gitgutter_map_keys = 0

" VCS diff
Plug 'mhinz/vim-signify'
let g:signify_realtime = 1
let g:signify_vcs_list = ['hg', 'git']
if exists('g:signify_vcs_cmds')
    let g:signify_vcs_cmds['hg'] =
        \ 'hg diff -w --config extensioons.color=! --config defaults.diff= --nodates -U0 -- %f'
endif

" Async grep
Plug 'mhinz/vim-grepper'
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)
let g:grepper = {
    \ 'tools': ['rg'],
    \ 'dir': 'filecwd',
    \}
nnoremap <leader>g :Grepper -cword -noprompt<CR>
nnoremap <leader>G :Grepper -dir repo -cword -noprompt<CR>

call plug#end()
" }}} vim-plug
