set nocompatible              " be iMproved, required
filetype off                  " required
set t_Co=256

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
Plugin 'ervandew/supertab'
Plugin 'Shougo/neocomplete.vim'
Plugin 'vim-scripts/CmdlineComplete'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'justinmk/vim-syntax-extra'
Plugin 'AutoComplPop'
Plugin 'L9'
Plugin 'ctrlp.vim'
Plugin 'https://github.com/steffanc/cscopemaps.vim.git'
Plugin 'https://github.com/vim-scripts/SrcExpl.git'
"Plugin 'spf13/PIV'
Plugin 'godlygeek/tabular'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

""Plugin 'MarcWeber/vim-addon-mw-utils'
""Plugin 'tomtom/tlib_vim'
""Plugin 'garbas/vim-snipmate'
""Plugin 'honza/vim-snippets'
""Plugin 'vim-scripts/echofunc.vim'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'Shougo/neocomplete'
""Plugin 'ctags.vim'
""Plugin 'cscope.vim'
""Plugin 'taglist.vim'
""Plugin 'taglist-plus'
""Plugin 'The-NERD-tree'

" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
""Plugin 'https://github.com/brookhong/cscope.vim'
""Plugin 'https://github.com/vim-scripts/Trinity.git'

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"colorscheme werks
"colorscheme xorium
"colorscheme molokai
syntax on
"set nowrap
set mouse=
filetype indent on
"filetype plugin on
setlocal binary
"set foldmethod=indent
set fileencodings=utf-8,big5,euc-jp,utf-bom,iso8859-1
set cmdheight=1
set tabstop=4
set shiftwidth=4
set cinwords=if,else,while,do,for,switch,foreach
set incsearch
set hls
highlight Visual term=reverse ctermbg=none cterm=reverse guibg=Gray
highlight Pmenu ctermfg=7 ctermbg=8 guibg=Gray
highlight PmenuSel ctermfg=0 ctermbg=2 guibg=Gray

set lbr "linebreak
set ai "autoindent
set smartindent
set nospell
"set nocompatible
set backspace=indent,eol,start
set showcmd
set nopaste
"set pastetoggle=<f11>
"nmap <F10> <Esc>:r! date -R<CR>i//<Esc><End>a by holystu
nmap <F5> :tabe<SPACE>
nmap <F1> :N<CR>
nmap <F2> :n<CR>
nmap <F3> :tabp<CR>
nmap <F4> :tabn<CR>

"Open and close all the three plugins on the same time"
""nmap <F6> :TrinityToggleSourceExplorer<CR>
nmap <F6> :SrcExplToggle<CR>

" // Set the height of Source Explorer window                                  "
let g:SrcExpl_winHeight = 6
" // Set 100 ms for refreshing the Source Explorer                             "
let g:SrcExpl_refreshTime = 100
"                                                                              "
" // Set "Enter" key to jump into the exact definition context                 "
let g:SrcExpl_jumpKey = "<ENTER>"
"                                                                              "
" // Set "Space" key for back from the definition context                      "
let g:SrcExpl_gobackKey = "<SPACE>"

" // In order to Avoid conflicts, the Source Explorer should know what plugins "
" // are using buffers. And you need add their buffer names into below list    "
" // according to the command ":buffers!"                                      "
let g:SrcExpl_pluginList = [
        \ "__Tag_List__",
        \ "_NERD_tree_",
        \ "Source_Explorer"
     \ ]
" // Enable/Disable the local definition searching, and note that this is not  "
" // guaranteed to work, the Source Explorer doesn't check the syntax for now. "
" // It only searches for a match with the keyword according to command 'gd'   "
let g:SrcExpl_searchLocalDef = 0
"                                                                              "
" // Do not let the Source Explorer update the tags file when opening          "
let g:SrcExpl_isUpdateTags = 0
"                                                                              "
" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to "
" //  create/update a tags file                                                "
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."

"map ," bi"<Esc>ea"<Esc>
"map ,( bi(<Esc>ea)<Esc>
"map ,[ bi[<Esc>ea]<Esc>
"map ,{ bi{<Esc>ea}<Esc>
map  <ESC><HOME>i//<ESC>
"inoremap ( ()<ESC>i
"inoremap [ []<ESC>i
"inoremap { {}<ESC>i<CR><CR><UP><TAB>
"inoremap " ""<ESC>i
"inoremap ' ''<ESC>i

