filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'morhetz/gruvbox'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'inkarkat/vim-ingo-library'
Plugin 'inkarkat/vim-mark'
Plugin 'udalov/kotlin-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'ternjs/tern_for_vim'
Plugin 'valloric/youcompleteme'

call vundle#end()

set cursorline
set expandtab
set hidden
set hlsearch
set ignorecase
set smartcase
set incsearch
set noswapfile
set number
set termguicolors
set cscopetagorder=1
set guioptions-=m
set guioptions-=T
set shiftwidth=4
set tabstop=4
set fileencodings=ucs-bom,utf-8,gbk,big5,gb18030,latin1

set background=dark
colo gruvbox
filetype plugin indent on


let mapleader = "\<Space>"
let maplocalleader = "\<Space>"
let g:ctrlp_by_filename = 1
let g:EasyMotion_smartcase = 1
let g:mwIgnoreCase = 0
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_invoke_completion = '<C-N>'
let g:ycm_key_list_stop_completion = ['<Enter>']
let tern_map_keys = 1

nn <C-H> <C-W>h
nn <C-L> <C-W>l
nn <C-K> <C-W>k
nn <C-J> <C-W>j
nn <silent> <C-N> :nohlsearch<CR>
nn <silent> <F3> :lv "<C-R>/" %<CR>:lw<CR>
nn <silent> <F8> :TagbarOpenAutoClose<CR>
nn <silent> <leader>gs :Gstatus<CR>
nn <silent> <leader>gt :YcmCompleter GoTo<CR>
nn <silent> <leader>gf :NERDTreeFind<CR>
nn <Leader>w :update<CR>
nn <Leader>q :quit<CR>

vn p pgvy

inoremap jj <Esc>

map s <Plug>(easymotion-overwin-f)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>y "+y
map <Leader>p "+p
map <Leader>P "+P
