
call plug#begin('~/.vim/plugged')

	Plug 'tikhomirov/vim-glsl'
	Plug 'vim-airline/vim-airline'


call plug#end()

set nu
set tabstop=4
set nocp

syntax enable
filetype plugin on

set path+=**
set wildmenu

command! MakeTags !ctags -R .
