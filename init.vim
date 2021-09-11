""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugins 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin()

Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
 let col = col('.') - 1
 return !col || getline('.')[col - 1]  =~# '\s'
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Compatibility and Look
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible "Disables Vi Compatibility
set updatetime=200 "Makes asynchronos plugins function sanely
filetype plugin on "Enable filetype plugins
filetype indent on "Enables indenting per filetype
set encoding=utf-8 "Encoding
set modelines=0 "Disable modelines

set t_Co=256 "Enable 256 colours
syntax enable "Highlight syntax
set lazyredraw "Stops draw on every action
set ttyfast "Nicer draw for fast terminals

set laststatus=2 "Always have status bar
set showmode "Shows current mode in status bar
set showcmd "Shows active command in the bottom right
set signcolumn=yes "Always keeps the column on the left

"Set line numbers
set relativenumber 
set number

set scrolloff=5 "Keeps 5 lines below cursor

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Behaviour
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set hidden "Doesn't close buffer on hide
set nowrap "Stops text wraping
set autoindent "Enables autoindent
set copyindent "Always indent same as above line

"tab stuff
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set shiftround
set smarttab

"FINDING FILES
set path+=** "Search subdirs
set wildmenu "Display matching files when tabbing

"Use backspace for indents and eol
set backspace=indent,eol,start

"Searching
set ignorecase "ignores case when searching
set smartcase "Dosen't when caps are present
set hlsearch "Highlight search
set incsearch "Search while typing

"Fold settings
set foldmethod=indent
set foldlevelstart=99

"Sencical splits
set splitright
set splitbelow

set history=500 "More commands
set undolevels=500 "More undos :D

"Disable back ups
set nobackup
set nowb
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Binds
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Maps space to leader and has a search window in the bottom
map <space> <leader>

"Map leaving insert mode to hh
inoremap hh <ESC>

"Allow editing of init.vim and reload on fly
nmap <leader>vr :e C:/Users/keian/AppData/Local/nvim/init.vim<cr>
nmap <leader>so : source C:/Users/keian/AppData/Local/nvim/init.vim<cr>

"spelling stuff

set spelllang=en_gb
map <leader>ss :setlocal spell!<cr>
hi SpellBad ctermbg=124
