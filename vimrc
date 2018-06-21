"
"
"   ███████╗██████╗ ██╗███████╗███████╗███████╗      ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"   ██╔════╝██╔══██╗██║██╔════╝██╔════╝██╔════╝      ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"   ███████╗██████╔╝██║█████╗  ███████╗███████╗      ██║   ██║██║██╔████╔██║██████╔╝██║     
"   ╚════██║██╔═══╝ ██║██╔══╝  ╚════██║╚════██║      ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"   ███████║██║     ██║███████╗███████║███████║    ██╗╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"   ╚══════╝╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝    ╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"  
"
"  This is Gustavo Spiess's .vimrc file;
"  Feel free to use, distribute or sell it;
"  
"
"                   leaders (you migth want to change this)
" ------------------------------------------------------------------------- "
    let maplocalleader = '-'
    let mapleader = 'ç'
" ------------------------------------------------------------------------- "
"
"                                    Flags
" ------------------------------------------------------------------------- "
    set number
    set ruler
    set wrap
    set linebreak
    set nolist
    set smarttab
    set expandtab
    set tabstop=4
    set shiftwidth=4
    set laststatus=2

    set foldmethod=indent
    set encoding=utf-8
    set fileencoding=utf-8

    set hlsearch
    set ignorecase

    set formatoptions=tcq2n

    set autoread
    set autowrite

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
    source ~\.vim\vimrc
    endif
    let g:bookmark_annotation_sign = '>>'
    let g:bookmark_sign = '>'
" ------------------------------------------------------------------------- "
"
"                               new  file config
" ------------------------------------------------------------------------- "
    " files with no type Will be considered text
    autocmd BufEnter * if &filetype == "" | setlocal filetype=text | endif
" ------------------------------------------------------------------------- "
"
"                                    Vundle
" ------------------------------------------------------------------------- "
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    
    " plugin manager
    Plugin 'VundleVim/Vundle.vim'
    
    " navigation tree
    "Plugin 'scrooloose/nerdtree'

    " panels for projects
    Plugin 'mihaifm/vimpanel'
    
    " style for status row
    Plugin 'vim-airline/vim-airline'

    " indentation object
    Plugin 'michaeljsmith/vim-indent-object'

    " surroun
    Plugin 'tpope/vim-surround'

    " pt_br spelling
    Bundle 'mateusbraga/vim-spell-pt-br'

    " bookmarks
    Plugin 'MattesGroeger/vim-bookmarks'

    " table mode
    Plugin 'dhruvasagar/vim-table-mode'

    " dbext
    Plugin 'vim-scripts/dbext.vim'

    call vundle#end()
    filetype plugin indent on
" ------------------------------------------------------------------------- "
"
"                                  vimpanel
" ------------------------------------------------------------------------- "
    let g:VimpanelCompact=1
    let g:VimpanelWinSize=30
" ------------------------------------------------------------------------- "
"
"                           Case sensitiveess remap
" ------------------------------------------------------------------------- "
    cnoreabbrev W! w!
    cnoreabbrev Q! q!
    cnoreabbrev Qall! qall!
    cnoreabbrev Wq wq
    cnoreabbrev Wa wa
    cnoreabbrev wQ wq
    cnoreabbrev WQ wq
    cnoreabbrev W w
    cnoreabbrev Q q
    cnoreabbrev Qall qall
" ------------------------------------------------------------------------- "
"
"                               .vimrc quik open
" ------------------------------------------------------------------------- "
    "ev for edit vimrc
    nnoremap <leader>ev :split $MYVIMRC<cr><C-w>T
    "sv for source vimrc
    nnoremap <leader>sv :source $MYVIMRC<cr>
" ------------------------------------------------------------------------- "
"
"                                    remaps
" ------------------------------------------------------------------------- "
    nnoremap <space> za
    nnoremap ; :
    "nnoremap <leader>nt :NERDTree<cr>
    nnoremap n nzz
    nnoremap N Nzz
    nnoremap * *zz
    nnoremap # #zz

    snoremap <cr> <cr>zz

    nnoremap [[ :let @" = @/<cr>?{<cr>:let @/ = @"<cr>
    nnoremap [] :let @" = @/<cr>?}<CR>:let @/ = @"<cr>
    nnoremap ][ :let @" = @/<cr>/}<cr>:let @/ = @"<cr>
    nnoremap ]] :let @" = @/<cr>/{<cr>:let @/ = @"<cr>
" ------------------------------------------------------------------------- "
"
"                                register share
" ------------------------------------------------------------------------- "
    nnoremap y "+y
    nnoremap Y "+Y
    nnoremap p "+p
    nnoremap P "+P
    nnoremap d "+d
    nnoremap D "+D
    nnoremap c "+c
    nnoremap C "+C
    nnoremap x "+x
    nnoremap X "+X
    nnoremap r "+r
    nnoremap s "+s
    nnoremap S "+S

    vnoremap y "+y
    vnoremap Y "+Y
    vnoremap p "+p
    vnoremap P "+P
    vnoremap d "+d
    vnoremap D "+D
    vnoremap c "+c
    vnoremap C "+C
    vnoremap x "+x
    vnoremap X "+X
    vnoremap r "+r
    vnoremap s "+s
" ------------------------------------------------------------------------- "
"
"                                  IDE tools
" ------------------------------------------------------------------------- "
    " java
        autocmd Filetype java set makeprg=javac\ %
        autocmd Filetype java set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
        autocmd Filetype java noremap <F9> :make<Return>:copen<Return>
        autocmd Filetype java inoreabbrev psvm public static void main(String[] args) {<c-o>==<c-o>o}<c-o>O
        autocmd Filetype java inoreabbrev sout System.out.println();<c-o>h
" ------------------------------------------------------------------------- "
"
"                                     GUI
" ------------------------------------------------------------------------- "
    if has("gui_running")
        syntax on
        set guifont=Consolas:h12:cANSI:qDRAFT
        simalt ~x
    endif
" ------------------------------------------------------------------------- "
"
"                                    Spell
" ------------------------------------------------------------------------- "
    if !empty(glob("~/.vim/bundle/vim-spell-pt-br/spell/pt.utf-8.add"))
        " for unix-like separator
        set spellfile="~/.vim/bundle/vim-spell-pt-br/spell/pt.utf-8.add"
    endif
    if !empty(glob("~\.vim\bundle\vim-spell-pt-br\spell\pt.utf-8.add"))
        " for windows like separator
        set spellfile="~\.vim\bundle\vim-spell-pt-br\spell\pt.utf-8.add"
    endif

    " Spell check applied to pt_br and en_us
    set spelllang=pt_br,en_us

    " Spell check for any Text file (*.txt)
    autocmd filetype Text setlocal spell

    "çsp to toggle spell check
    nnoremap <leader>sp :setlocal spell!<cr>

    inoremap <C-x><C-=> <C-o>j<C-o>z=<C-o>k
" ------------------------------------------------------------------------- "
"
"                                    dbext
" ------------------------------------------------------------------------- "
    let g:dbext_default_ORA_cmd_header = "set linesize 10000\n"
" ------------------------------------------------------------------------- "
