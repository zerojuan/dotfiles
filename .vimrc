set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'gmarik/vundle'

Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
call vundle#end()

set number
syntax on
set background=dark
colorscheme zenburn

filetype plugin indent on
map <C-n> :NERDTreeToggle<CR>
