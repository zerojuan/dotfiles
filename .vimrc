set shell=/bin/bash
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-surround'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasiser/vim-code-dark'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'valloric/youcompleteme'
Plugin 'eslint/eslint'
Plugin 'easymotion/vim-easymotion'
Plugin 'chiel92/vim-autoformat'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'marijnh/tern_for_vim'
Plugin 'svg.vim'
Plugin 'burnettk/vim-angular'
Plugin 'othree/html5.vim', { 'for': 'html' }
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'airblade/vim-gitgutter'
call vundle#end()

filetype plugin indent on


syntax on
set background=dark
colorscheme codedark
set backspace=2
set history=50
set ruler
set showcmd
set incsearch
set laststatus=2
set number
set numberwidth=5

set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

set nojoinspaces
set autoindent
set smartindent

set guioptions=

nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

map <C-n> :NERDTreeToggle<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_html_tidy_ignore_errors = [
  \'proprietary attribute',
  \'<svg> is not recognized',
  \'discarding unexpected <svg>',
  \'discarding unexpected </svg>',
  \'<a> escaping malformed URI reference',
  \]
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = '×'
let g:syntastic_warning_symbol = '▲'
let g:syntastic_style_error_symbol = '×'
let g:syntastic_style_warning_symbol = '×'

let g:ctrlp_working_path_mode = 'ra'
