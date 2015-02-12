if filereadable(expand('~/src/vim/bundle/vim-pathogen/autoload/pathogen.vim'))
  source ~/src/vim/bundle/vim-pathogen/autoload/pathogen.vim
endif
silent! execute pathogen#infect("~/.vim/bundle/{}")

syntax enable
filetype plugin indent on
set nocompatible
set mousehide
set laststatus=1
set ttimeout
set ttimeoutlen=50
set ruler
set cursorline
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
map <leader>nh :nohlsearch<CR>

" colors
set background=dark
colorscheme base16-ocean

" let braces auto close and auto format
inoremap {<CR> {<CR>}<Esc>ko

" insert new line in normal mode without going into insert mode
nnoremap <CR> o<Esc>

" Fix indenting for css style things (sass, css)
au BufEnter *.css set nocindent
au BufLeave *.css set cindent
au BufEnter *.scss set nocindent
au BufLeave *.scss set cindent
au BufEnter *.sass set nocindent
au BufLeave *.sass set cindent
au BufEnter *.less set nocindent
au BufLeave *.less set cindent
 
autocmd BufNewFile,BufRead *.scss set ft=scss.css "Sets filetype of scss to be css. Helps with plugins.
autocmd BufNewFile,BufRead *.less set ft=less.css "Sets filetype of less to be css. Helps with plugins.

" Change cursor shape between insert and normal mode
if $TERM_PROGRAM =~ "iTerm"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
  let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

" Window splits
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <leader>- <C-W>-
map <leader>+ <C-W>+
map <leader>< <C-W><
map <leader>> <C-W>>
map <S-Tab> :bn<CR>

" moving up and down the page easily
map <leader>d Lzt
map <leader>u Hzb

imap jj <esc>
ino jj <esc>
cno jj <c-c>
vno v <esc>
nnoremap <silent> <leader>z :bp<CR>
nnoremap <silent> <leader>x :bn<CR>
nnoremap <silent> <leader>db :bp\|bd #<CR>

"Ignoring things, primarily for the sake of ctrl P, might not be valid for your use case
set wildignore+=*.iml,*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/bower_components/*,*/built/*,*.class,*/target/*,*/out/*,*/components/*,*/public/*,*/releases/*,*/dist/*

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Set minimum syntax keyword length.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
