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
"                                     Flags
" ------------------------------------------------------------------------- "
    set number
    set ruler

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

    set foldmethod=indent
    set encoding=utf-8
    set fileencoding=utf-8

    set hlsearch
    set ignorecase

    colorscheme desert

    set formatoptions=tcq2n

    set autoread
    set autowrite

    set nocompatible
    set nobackup "no backup

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

    let g:bookmark_annotation_sign = '>>'
    let g:bookmark_sign = '>'

    set grepprg=git\ grep
    colorscheme desert
" ------------------------------------------------------------------------- "
"
"                               new  file config
" ------------------------------------------------------------------------- "
    " files with no type Will be considered text
    augroup INI
        autocmd!
        autocmd BufEnter * if &filetype == "" | setlocal filetype=Text | endif
    augroup END
" ------------------------------------------------------------------------- "
"
"                                    Vundle
" ------------------------------------------------------------------------- "
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    " plugin manager
    Plugin 'VundleVim/Vundle.vim'

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

    " linter
    Plugin 'w0rp/ale'

    "Organization and note taking
        "Wiki
        Plugin 'vimwiki/vimwiki'

        "Calendar
        Plugin 'mattn/calendar-vim'

    " Git
    Plugin 'tpope/vim-fugitive'

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
"                                    remaps
" ------------------------------------------------------------------------- "
    " Search centralized
        nnoremap n nzz
        nnoremap N Nzz
        nnoremap * *zz
        nnoremap # #zz

    " block navigation
        nnoremap [[ :silent let @" = @/<cr>?{<cr>:silent let @/ = @"<cr>
        nnoremap [] :silent let @" = @/<cr>?}<cr>:silent let @/ = @"<cr>
        nnoremap ][ :silent let @" = @/<cr>/}<cr>:silent let @/ = @"<cr>
        nnoremap ]] :silent let @" = @/<cr>/{<cr>:silent let @/ = @"<cr>

    " very magic search
        nnoremap / /\v
        vnoremap / /\v
        nnoremap ? ?\v
        vnoremap ? ?\v

    " .vimrc quik open
        "ev for edit vimrc
        nnoremap <leader>ev :silent tabe $MYVIMRC<cr>
        "sv for source vimrc
        nnoremap <leader>sv :silent source $MYVIMRC<cr>

    " Case sensitiveess remap
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

    " Scratch
        nnoremap <leader>tf :setlocal buftype=<cr>
        nnoremap <leader>ts :setlocal buftype=nofile<cr>
        nnoremap <leader>nf <C-w>n
        nnoremap <leader>ns <C-w>n:setlocal buftype=nofile<cr>

    " register share toggle
        let g:registerShare = 0
        let g:registerShareOperations = ['y','Y','p','P','d','D','c','C','x','X','r','s']
        function! RegisterShareToggle()
            let g:registerShare = !g:registerShare
            if g:registerShare
                for operation in g:registerShareOperations 
                    execute 'nnoremap '.operation.' '.operation
                    execute 'vnoremap '.operation.' '.operation
                endfor
            else
                for operation in g:registerShareOperations 
                    execute 'nnoremap '.operation.' "+'.operation
                    execute 'vnoremap '.operation.' "+'.operation
                endfor
            endif
        endfunction
        call RegisterShareToggle()
        nnoremap <leader>+ :call RegisterShareToggle()<cr>

    " undo
        inoremap <cr> <C-g>u<cr>
        inoremap <space> <C-g>u<space>

    " spell toggle
        nnoremap <leader>sp :setlocal spell!<cr>

    " change directory
        nnoremap <leader>cd :execute "cd %:h"<cr>:pwd<cr>
" ------------------------------------------------------------------------- "
"
"                                  IDE tools
" ------------------------------------------------------------------------- "
    augroup IDE
        autocmd!
        " java
            autocmd Filetype java set makeprg=javac\ %:h/../**/*.java
            autocmd Filetype java set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
            autocmd Filetype java noremap <F9> :silent make<Return>:silent copen<Return>
            autocmd Filetype java inoreabbrev psvm public static void main(String[] args) {<c-o>==<c-o>o}<c-o>O
            autocmd Filetype java inoreabbrev sout System.out.println();<c-o>h

            autocmd Filetype java set tabstop=4
            autocmd Filetype java set shiftwidth=4

        "JavaScript
            autocmd Filetype javascript set tabstop=2
            autocmd Filetype javascript set shiftwidth=2

        "SQL
            autocmd Filetype sql set tabstop=4
            autocmd Filetype sql set shiftwidth=4
    augroup END

" ------------------------------------------------------------------------- "
"
"                                     GUI
" ------------------------------------------------------------------------- "
    if has("gui_running")
        syntax on
        set guifont=Consolas:h12:cANSI:qDRAFT
        set lines=60 columns=108 linespace=0
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

    " Spell check for any Text file (*.txt,*.wiki) and scrachs
    augroup SP
        autocmd!
        autocmd FileType text setlocal spell
        autocmd FileType vimwiki setlocal spell
	    autocmd filetype scratch setlocal spell
	    autocmd filetype gitcommit setlocal spell
    augroup END
" ------------------------------------------------------------------------- "

