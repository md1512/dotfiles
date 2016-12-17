set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Rust
Plugin 'rust-lang/rust.vim'
" Racer
Plugin 'racer-rust/vim-racer'
" Vim Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'scrooloose/nerdTree'

Plugin 'Valloric/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"

filetype on

syntax on
set number 
set paste 
set ai
filetype plugin indent on
set colorcolumn=80
" History
set history=700
set undolevels=700

" Airline
set laststatus=2
let g:airline_powerline = 1
let g:airline_powerline_fonts = 1 
set t_Co=256

set hidden
let g:racer_cmd = "/home/marco/.cargo/bin/racer"
let $RUST_SRC_PATH="/home/marco/git/rust"
let g:rustfmt_autosave = 1

" Ctrl-S abilitato
nnoremap <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <c-s> <c-o>:Update<CR>

" Autoreload vimrc
autocmd! bufwritepost .vimrc source%

" Copy & Paste
set pastetoggle=<F2>
set clipboard=unnamed

" Tab movement
map <C-l> :tabnext<CR> 
map <C-h> :tabprev<CR> 

nnoremap <C-k> :YcmCompleter GoTo<CR>

nnoremap :Q :q

" nnoremap :tf :tabfind
" nnoremap :tn :tabnew

nnoremap <Left> :tabprev<CR>
nnoremap <Right> :tabnext<CR>
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>

