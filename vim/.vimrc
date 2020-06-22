" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tomasr/molokai'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Syntax coloring
syntax enable

" Color schemes
colorscheme default

" Enable line numbers
set number
set mouse=a
set cursorline

filetype plugin indent on
" Set tabs to 4 spaces
set tabstop=4
" When indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
