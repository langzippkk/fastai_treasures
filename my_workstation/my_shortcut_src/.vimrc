set tags=tags
set foldcolumn=3
set foldmethod=indent
set ignorecase

command FileAddress echo expand('%:p')

syntax on
set background=dark
filetype indent plugin on

""""" current millenium
set nocompatible
syntax enable
filetype plugin on

""""" file finder or fuzzy search
set path+=**

""""" display all matching files when tab
set wildmenu

""""" Tag Jumping
command! MakeTags !ctags -R .
command MT MakeTags

""""" tag jump with new tab horizontally or vertically
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

"""" switch tabs in vim 
map <C-a><up> :tabr<cr>
map <C-a><down> :tabl<cr>
map <C-a><left> :tabp<cr>
map <C-a><right> :tabn<cr>

"""""""""""""""" make presentation with vim files
au VimEnter no_plugins.vim setl window=66
au VimEnter no_plugins.vim normal 8Gzz
au VimEnter no_plugins.vim command! GO normal M17jzzH
au VimEnter no_plugins.vim command! BACK normal M17kzzH
au VimEnter no_plugins.vim command! RUN execute getline(".")
" au VimEnter no_plugins.vim unmap H
" au VimEnter no_plugins.vim unmap L
" why dont these work :(
au VimEnter no_plugins.vim nnoremap ^f :GO<CR>
au VimEnter no_plugins.vim nnoremap ^b :BACK<CR>