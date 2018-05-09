if filereadable(expand('~/src/vim/bundle/vim-pathogen/autoload/pathogen.vim'))
  source ~/src/dotvim/bundle/vim-pathogen/autoload/pathogen.vim
endif

execute pathogen#infect()

syntax enable
syntax on
filetype plugin indent on
set linespace=4
set nocompatible
set mousehide
set laststatus=1
set ttimeout
set ttimeoutlen=50
set ruler
set encoding=utf-8
set number
set nowrap
let mapleader = ","
set nobackup
set nowritebackup
set noswapfile
set nofoldenable
set hidden
set visualbell
set title
set undofile
set undodir=~/.vim/undodir

set autoindent
set cindent
set smartindent

" set tab preferences - tab = 2 spaces
set expandtab
set shiftwidth=2
set tabstop=2

set clipboard=unnamed

set showcmd
set showmatch
set nostartofline

" highlight search results
set hlsearch
" clear line highlighting - "clear highlights"
map <leader>ch :nohlsearch<CR>
" shortcuts for quitting and saving
map <leader>q :q<CR>
map <leader>wq :wq <CR>

" colors
let g:hybrid_use_Xresources = 1
set background=dark
colorscheme hybrid

" disable checking for preprocessors in .vue files
let g:vue_disable_pre_processors=1

" let braces auto close and auto format
inoremap {<CR> {<CR>}<Esc>ko

" insert new line in normal mode without going into insert mode
nnoremap <CR> o<Esc>

imap jj <esc>
ino jj <esc>
cno jj <c-c>
vno v <esc>

" fix issues with Vue file syntax highlighting
autocmd FileType vue syntax sync fromstart
