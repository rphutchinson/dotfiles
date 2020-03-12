set nocompatible              " be iMproved, required

call plug#begin()
Plug 'flazz/vim-colorschemes'
Plug 'pangloss/vim-javascript'
"Plug 'valloric/youcompleteme'
Plug 'bronson/vim-trailing-whitespace'
Plug 'Shougo/denite.nvim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/goyo.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'reedes/vim-pencil'
Plug 'altercation/vim-colors-solarized'
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
filetype on
filetype plugin on
imap <C-c> <CR><Esc>O

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
	if exists('$TMUX')
		let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
		let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
	else
		let &t_SI = "\<Esc>]50;CursorShape=1\x7"
		let &t_EI = "\<Esc>]50;CursorShape=0\x7"
	endif
endif

"Markdown settings
let g:vim_markdown_folding_disabled = 0
let g:vim_markdown_emphasis_multiline = 0
set conceallevel=2
let g:vim_markdown_new_list_item_indent = 2

let g:javascript_plugin_jsdoc = 1
"NerdTree settings
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
