silent! call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'tomtom/tcomment_vim'
Plug 'easymotion/vim-easymotion'
Plug 'inkarkat/vim-ingo-library'
Plug 'inkarkat/vim-mark'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

call plug#end()

set autoindent
set clipboard^=unnamedplus,unnamed
set cursorline
set expandtab
set fileencodings=ucs-bom,utf-8,gbk,big5,gb18030,latin1
set guioptions-=m
set guioptions-=T
set hidden
set hlsearch
set ignorecase
set incsearch
set noswapfile
set scrolloff=0
set shiftwidth=4
set tabstop=4
set termguicolors

set background=dark
colo gruvbox

let mapleader = "\<Space>"
let maplocalleader = "\<Space>"
let g:ctrlp_by_filename = 1
let g:ctrlp_custom_ignore = '/build$'
let g:EasyMotion_smartcase = 1
let g:mwIgnoreCase = 0

nn <C-H> <C-W>h
nn <C-L> <C-W>l
nn <C-K> <C-W>k
nn <C-J> <C-W>j
nn <silent> <C-N> :nohlsearch<CR>
nn <silent> <leader>gf :NERDTreeFind<CR>
nn <silent> <leader>o :CtrlPMRUFiles<CR>
nn <silent> <leader>b :CtrlPBuffer<CR>
nn <Leader>w :update<CR>
nn <Leader>q :quit<CR>

vn p pgvy
vn < <gv
vn > >gv

inoremap jj <Esc>

map s <Plug>(easymotion-overwin-f)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
