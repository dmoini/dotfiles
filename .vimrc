" Vim-plug plugins will be downloaded to this directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'scrooloose/nerdtree'
" Plug 'micha/vim-colors-solarized'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" NERDTree settings
let mapleader = ","
nmap<leader>n :NERDTree<cr>

" Syntax coloring
filetype plugin indent on
syntax enable

" Color schemes
let g:molokai_original = 1
let g:rehash256 = 1
" let g:solarized_termcolors=256
" colorscheme solarized
" set background=dark

" Enable line numbers
set number

" Set tabs to 4 spaces
" set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Tab indentation for each language
" autocmd Filetype html setlocal ts=2 sts=2 sw=2 expandtab
" autocmd Filetype ruby setlocal ts=4 sts=4 sw=4 expandtab
" autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab
" autocmd Filetype java setlocal ts=2 sts=2 sw=2 expandtab
" autocmd Filetype c setlocal ts=2 sts=2 sw=2 expandtab
" autocmd Filetype elm setlocal ts=2 sts=2 sw=2 expandtab
" autocmd Filetype notes setlocal ts=2 sts=2 sw=2 expandtab spell
" autocmd Filetype text setlocal spell
