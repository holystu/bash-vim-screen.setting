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
Plugin 'AutoComplPop'
Plugin 'L9'
Plugin 'ctrlp.vim'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}



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

"set t_Co=256
"colorscheme werks
"colorscheme xorium
"colorscheme molokai
syntax on
"set nowrap
set mouse=
filetype indent on
"filetype plugin on
setlocal binary
set fileencodings=utf-8,big5,euc-jp,utf-bom,iso8859-1
set cmdheight=1
set tabstop=4
set shiftwidth=4
set cinwords=if,else,while,do,for,switch,foreach
set incsearch
set hls
set ai "autoindent
set smartindent
set nospell
set nocompatible
set backspace=indent,eol,start
set showcmd
set nopaste
set pastetoggle=<f11>
nmap <F10> <Esc>:r! date -R<CR>i//<Esc><End>a by holystu
map <F5> <Esc>:tabe<SPACE>
nmap <F1> :N<CR>
nmap <F2> :n<CR>
nmap <F3> :tabp<CR>
nmap <F4> :tabn<CR>
map ," bi"<Esc>ea"<Esc>
map ,( bi(<Esc>ea)<Esc>
map ,[ bi[<Esc>ea]<Esc>
map ,{ bi{<Esc>ea}<Esc>
