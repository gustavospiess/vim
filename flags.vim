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
    set backup "no backup

    set scrolloff=7

    set undofile
    set undolevels=3000

    if !empty(glob("~/.vim/vimrc"))
        " for unix-like separator
        set backupdir=~/.vim/backup//
        set directory=~/.vim/swap//
        set undodir=~/.vim/undo//
    endif
    if !empty(glob("~\.vim\vimrc"))
        " for windows like separator
        set backupdir=~\.vim\backup\\
        set directory=~\.vim\swap\\
        set undodir=~\.vim\undo\\
    endif

    set spelllang=pt_br,en_us

    set grepprg=git\ grep
    colorscheme onedark

    set diffopt+=iwhite

    set number relativenumber

    "set comments=''

    augroup numbertoggle
      autocmd!
      autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
      autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
    augroup END

    set wildmenu
" ------------------------------------------------------------------------- "
    let g:xml_syntax_folding=1
