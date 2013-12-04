" http://statico.github.com/vim.html
" http://stackoverflow.com/questions/1031015/using-vi-vim-or-gvim-as-ide

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Other bundles
Bundle 'nanotech/jellybeans.vim'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'scrooloose/syntastic.git'
Bundle 'sjl/gundo.vim.git'
Bundle 'fholgado/minibufexpl.vim'

filetype plugin indent on     " required!

syntax on

colorscheme jellybeans

set number

set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab

let &showbreak=repeat(' ', 2)
set wrap
set lbr

set autowrite

set mouse=a

set undodir=~/.vim/undo
set undofile
set undolevels=1000 " maximum number of changes that can be undone
set undoreload=10000 " maximum number lines to save for undo on a buffer reload

let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1

" Mappings
nmap <F5> :GundoToggle<CR>

nmap <F6> :NERDTreeToggle<CR>

nmap <F7> :MBEToggle<CR>

nmap <F8> :TagbarToggle<CR>


map <Leader>p :setlocal paste! paste?<CR>

map <Leader>r mzgg=G`z<CR>

set incsearch
set ignorecase
set smartcase
set hlsearch
map <Leader>q :setlocal hlsearch! hlsearch?<CR>

set nospell spelllang=en_gb
map <Leader>s :setlocal spell! spell?<CR>

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
        set t_Co=256
endif

if filereadable(".vimrc.local")
	so .vimrc.local
endif

