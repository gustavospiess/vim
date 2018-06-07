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
"            leaders
" (you migth want to change this)
"  -----------------------------
    let maplocalleader = '-'
    let mapleader = 'ç'
"  -----------------------------
"
"             Flags
"  -----------------------------
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

    set autoread
    set autowrite

    let g:bookmark_annotation_sign = '>>'
    let g:bookmark_sign = '>'

    if has("gui_running")
        syntax on
        set guifont=Consolas:h12:cANSI:qDRAFT
    endif
"  -----------------------------
"
"           Spell
"  -----------------------------
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
"  -----------------------------
"
"      new  file config
"  -----------------------------
    " files with no type Will be considered text
    autocmd BufEnter * if &filetype == "" | setlocal filetype=text | endif
"  -----------------------------
"
"            Vundle
"  -----------------------------
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    
    " pluggin manager
    Plugin 'VundleVim/Vundle.vim'
    
    " navigation tree
    Plugin 'scrooloose/nerdtree'
    
    " style for status row
    Plugin 'vim-airline/vim-airline'

    " indentation object
    Plugin 'michaeljsmith/vim-indent-object'

    " surround
    Plugin 'tpope/vim-surround'

    " pt_br spelling
    Bundle 'mateusbraga/vim-spell-pt-br'

    " Bookmarcks
    Plugin 'MattesGroeger/vim-bookmarks'

    " Table mode
    Plugin 'dhruvasagar/vim-table-mode'

    call vundle#end()
    filetype plugin indent on
"  -----------------------------
"
"       NERDTree configs
"  -----------------------------
    augroup NT
    autocmd!
    " Open NERDTree when start
    autocmd vimenter * NERDTree
    " close whent NERDTree is the only tab
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    augroup END

    " nt to open nerd tree
    nnoremap <leader>nt :NERDTree<cr>
"  -----------------------------
"
"     Case sensitiveess remap
"  -----------------------------
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
"  -----------------------------
"
"      .vimrc quik open
"  -----------------------------
    "ev for edit vimrc
    nnoremap <leader>ev :split $MYVIMRC<cr><C-w>T
    "sv for source vimrc
    nnoremap <leader>sv :source $MYVIMRC<cr>
"  -----------------------------
"
"             remaps
"  -----------------------------
    nnoremap <space> za
    nnoremap ; :
    nnoremap <leader>nt :NERDTree<cr>
    nnoremap n nzz
    nnoremap N Nzz
    nnoremap * *zz
    nnoremap # #zz

    snoremap <cr> <cr>zz

    nnoremap <Left> i<space><esc>
    nnoremap <Right> a<space><esc>
    nnoremap <Up> O<esc>
    nnoremap <Down> o<esc>
 
    nnoremap [[ :let @" = @/<cr>?{<cr>:let @/ = @"<cr>
    nnoremap [] :let @" = @/<cr>?}<CR>:let @/ = @"<cr>
    nnoremap ][ :let @" = @/<cr>/}<cr>:let @/ = @"<cr>
    nnoremap ]] :let @" = @/<cr>/{<cr>:let @/ = @"<cr>
"  -----------------------------
"
"        register share
"  -----------------------------
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
"  -----------------------------
"
"           IDE tools
"  -----------------------------
    " java
        autocmd Filetype java set makeprg=javac\ %
        autocmd Filetype java set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
        autocmd Filetype java noremap <F9> :make<Return>:copen<Return>
        autocmd Filetype java noreabbrev psvm public static void main(String[] args) {<c-o>==<c-o>o}<c-o>O
        autocmd Filetype java noreabbrev sout System.out.println();<c-o>h
"  -----------------------------
