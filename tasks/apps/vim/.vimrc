set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'yggdroot/indentline'
Plugin 'morhetz/gruvbox'
Plugin 'elzr/vim-json'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line

" set the colorscheme
colorscheme gruvbox
set background=dark    

" linenumber settings
set number

" tab settings
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
