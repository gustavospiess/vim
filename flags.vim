"                                     Flags
" ------------------------------------------------------------------------- "
    set number
    set ruler

    set report=0

    set wrap
    set linebreak
    set breakindent
    set showbreak=\ \ \ \ 

    set nolist
    set smarttab
    set expandtab
    set tabstop=4
    set shiftwidth=4
    set laststatus=2

    set foldmethod=syntax
    set encoding=utf-8
    set fileencoding=utf-8

    set hlsearch
    set ignorecase

    set formatoptions=tcq2n

    set autoread
    set autowrite

    set nocompatible
    set backup

    set scrolloff=7

    set undofile
    set undolevels=3000

    set backupdir=~\.vim\backup\\
    set directory=~\.vim\swap\\
    set undodir=~\.vim\undo\\

    set spelllang=pt_br,en_us
    set complete=.,w,t,b,u,i,kspell,s

    colorscheme onedark

    set diffopt+=iwhite

    set number relativenumber

    set wildmenu

    "yank and past to/from clipboard
    set clipboard=unnamed

    set incsearch

    filetype plugin indent on
    syntax on

" ------------------------------------------------------------------------- "
"
    let g:xml_syntax_folding=1
    let g:crunch_result_type_append = 0
