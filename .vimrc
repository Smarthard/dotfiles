
call plug#begin('~/.vim/plugged')

	Plug 'https://github.com/scrooloose/nerdtree.git' 
	Plug 'tikhomirov/vim-glsl'

call plug#end()

set nu

" NERDTree autoinit
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
