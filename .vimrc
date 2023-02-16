set number
set hlsearch
set tabstop=2
syntax on

call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
call plug#end()

let g:go_fmt_command = "goimports"

