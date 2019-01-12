set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Browsers
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
"Deoplete
Plugin 'Shougo/deoplete.nvim'
Plugin 'zchee/deoplete-jedi'
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
"Syntax Checking
Plugin 'w0rp/ale'

" Status Bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ryanoasis/vim-devicons'

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

syntax on
set encoding=utf8
let base16colorspace=256
set t_Co=256

" Deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_completion_start_length = 0
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
" Close preview window after completion
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Vim-Airline Conf
colorscheme torte
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='murmur'

" Lines
set number
set ruler
set cursorline
set background=dark
set hlsearch

" Tabs
nmap <C-S-t> :tabnew<CR>
nmap <C-n> :tabnew<CR>
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Personal Shortcuts
nmap <C-p>p :NERDTreeToggle<CR>
nnoremap <silent> <F8> :TagbarToggle<CR> 
nnoremap <silent> <F9> :TagbarOpenAutoClose<CR> 
nnoremap <silent> <C-f> :noh<CR>


