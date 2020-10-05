" To install plugins, run :PlugInstall
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Activate vim-polygot
packload

" Custom mappings
map <C-n> :NERDTreeToggle<CR>

" Syntax coloring and color scheme
syntax on
colorscheme onedark

" Setting terminal colors
let g:onedark_termcolors=256

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
