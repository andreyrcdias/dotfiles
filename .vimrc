set nocompatible
filetype on
syntax on
filetype plugin on
filetype indent on
set guicursor=""
set nu
set relativenumber
" for python dev
set textwidth=79
set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4
set shiftround
set autoindent
set smartcase
set nowrap
set noswapfile
set nobackup
set noundofile
set undofile
set hlsearch
set incsearch
set ignorecase
set showmode
set backspace=indent,eol,start
set wildmenu
set wildmode=list:longest,list:full
set ffs=unix,mac
set list
set listchars=trail:·
colorscheme default
highlight Comment ctermfg=green
let mapleader = " "
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <leader>r :so ~/.vimrc<cr>
nmap <leader>pv :Ex<cr>
nnoremap K :m .-2<CR>==
inoremap J <Esc>:m .+1<CR>==gi
inoremap K <Esc>:m .-2<CR>==gi
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
nmap <C-n> :nohl<cr>
