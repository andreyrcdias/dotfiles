:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable="*"
let g:NERDTreeDirArrowCollapsable="~"
let g:NERDTreeIgnore = ['^.pyc$','^__pycache__$[[dir]]','^.pytest_cache$[[dir]]','^.mypy_cache$[[dir]]','^.ipynb_checkpoints$[[dir]]']

