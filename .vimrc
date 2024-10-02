set relativenumber
inoremap jj <Esc>
filetype on
filetype plugin on
filetype indent on
syntax on
set nocompatible
set number
set tabstop=4
set shiftwidth=4
set expandtab
set textwidth=0
set wrapmargin=0
set wrap
set linebreak
set breakindent
set mouse=a
set belloff=all
set splitright
set splitbelow
set autoread

command! RunCpp execute '!g++ -DR % -o %< && ./%<'
nnoremap <C-n> :RunCpp<CR>
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

