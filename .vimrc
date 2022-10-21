" https://vimconfig.com

set nocompatible

filetype on
filetype plugin on
filetype indent on

syntax on

set number
" set cursorline
" set cursorcolumn
set showmatch
set hlsearch
set smartcase
set ignorecase
set incsearch
set expandtab
" set autoindent
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set ruler
set nobackup
set showmode

set wildmenu
set wildmode=list:longest,list:full

let mapleader = ","
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
