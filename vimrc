set nocompatible              " be iMproved, required

call plug#begin()
Plug 'flazz/vim-colorschemes'
Plug 'pangloss/vim-javascript'
"Plug 'valloric/youcompleteme'
Plug 'bronson/vim-trailing-whitespace'
Plug 'Shougo/denite.nvim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()

if (exists('+colorcolumn'))
	set colorcolumn=100
	highlight ColorColumn ctermbg=9
endif

"Basic Settings
set t_Co=256
syntax on
set background=dark
colorscheme solarized
set tabstop=2

imap <C-c> <CR><Esc>O

let g:javascript_plugin_jsdoc = 1

"NerdTree settings
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
