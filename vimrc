set nocompatible              " be iMproved, required
filetype off                  " required

" ------
" Vim-plug plugin init
" ------ 

call plug#begin()
" -------
" Plugins
" -------
Plug 'https://github.com/bling/vim-airline.git'

" Color plugin
Plug 'https://github.com/flazz/vim-colorschemes.git'

call plug#end()

" --------------
" End of plugins
" --------------
colorscheme elflord

" ------
" Misc.
" ------
let g:airline_powerline_fonts = 1
set laststatus=2
set mouse=
au OptionSet diff let &cursorline=!v:option_new
