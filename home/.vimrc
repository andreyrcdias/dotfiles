set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set guicursor=""
set nu
set relativenumber
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartcase
set smartindent
set wrap
set noswapfile
set nobackup
set undofile
set hlsearch
set incsearch
set showmode
set wildmenu
set wildmode=list:longest,list:full
set ffs=unix,mac
let mapleader = " "
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <leader>r :so ~/.vimrc<cr>
nnoremap K :m .-2<CR>==
inoremap J <Esc>:m .+1<CR>==gi
inoremap K <Esc>:m .-2<CR>==gi
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

