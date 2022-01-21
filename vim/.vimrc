set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'preservim/nerdtree'
Plugin 'sheerun/vim-polyglot'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'

call vundle#end()

syntax on
filetype plugin indent on

set autoread
set autoindent
set smartindent
set backspace=indent,eol,start
set clipboard=unnamed,unnamedplus
set encoding=utf8
set hidden
set mouse=a
set nowrap
set number relativenumber
set cmdheight=2
set completeopt-=preview
set switchbuf=usetab
set background=dark

map Y y$

