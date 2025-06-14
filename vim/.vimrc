" To install plugins, run :PlugInstall
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Activate vim-polygot
packload

" Custom mappings
map <C-n> :NERDTreeToggle<CR>

" For Neovim 0.1.3 and 0.1.4 - https://github.com/neovim/neovim/pull/2198
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
if (has('termguicolors'))
  set termguicolors
endif

" Syntax coloring and color scheme
syntax on
let g:material_theme_syntax = 'default'
colorscheme material

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
