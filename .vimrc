
call plug#begin('~/.vim/plugged')

	Plug 'tikhomirov/vim-glsl'
	Plug 'vim-airline/vim-airline'


call plug#end()

set nu
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
set nocp

syntax enable
filetype plugin on

set path+=**
set wildmenu

"needs ctags installed
command! MakeTags !ctags -R .
