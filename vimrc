set nocompatible              " be iMproved, required
filetype off                  " required

" ------
" Vundle
" ------ 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" -------
" Plugins
" -------
Plugin 'bling/vim-airline'

" Color plugin
Plugin 'flazz/vim-colorschemes'

call vundle#end()

" --------------
" End of plugins
" --------------
colorscheme elflord
filetype plugin indent on 

"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"

" ------
" Misc.
" ------
let g:airline_powerline_fonts = 1
syntax on
set laststatus=2
set mouse=
au OptionSet diff let &cursorline=!v:option_new
