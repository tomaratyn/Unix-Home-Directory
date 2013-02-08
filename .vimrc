set tabstop=4
set shiftwidth=4
set expandtab

call pathogen#infect()
syntax on
set number

filetype plugin indent on

set background=light
colorscheme solarized

filetype plugin on
set ofu=syntaxcomplete#Complete

if has('gui_running')
  set guifont=Monaco:h13
endif

autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType js setlocal shiftwidth=2 tabstop=2

