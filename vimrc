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

    " es spelling
    Bundle 'llucbrell/vim-es-spellchecker-rem'

    " dbext
    Plugin 'vim-scripts/dbext.vim'

    "Organization and note taking
        "Wiki
        Plugin 'vimwiki/vimwiki'

        "Calendar
        Plugin 'mattn/calendar-vim'

    " Git
    Plugin 'tpope/vim-fugitive'

    " Matcihng
    Plugin 'tmhedberg/matchit'

    " OneDark style
    Plugin 'joshdick/onedark.vim'

    call vundle#end()
    filetype plugin indent on
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

    set formatoptions=tcq2n

    set autoread
    set autowrite

    set nocompatible
    set nobackup "no backup

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
" ------------------------------------------------------------------------- "
"
"                                  Vimwiki
" ------------------------------------------------------------------------- "
    let wiki = {}
    let wiki.path = '~/vimwiki/'
    let wiki.nested_syntaxes = {
                \'pascal': 'pascal',
                \'sql': 'sql',
                \'java': 'java',
                \'javascript': 'js',
                \'text': 'text',
                \'diff': 'diff',
                \'xml': 'xml',
                \'html': 'html',
                \'rtf': 'rtf',
                \'css': 'css'}
    let g:vimwiki_list = [wiki]
" ------------------------------------------------------------------------- "
"
"                                  vimpanel
" ------------------------------------------------------------------------- "
    let g:VimpanelCompact=1
    let g:VimpanelWinSize=30
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
            if g:registerShare
                for operation in g:registerShareOperations 
                    execute 'nnoremap '.operation.' '.operation
                    execute 'vnoremap '.operation.' '.operation
                endfor
                nnoremap <leader>yp :let @" = expand('%:p')<cr>
                echo 'not sharing registers'
            else
                for operation in g:registerShareOperations 
                    execute 'nnoremap '.operation.' "+'.operation
                    execute 'vnoremap '.operation.' "+'.operation
                endfor
                nnoremap <leader>yp :let @+ = expand('%:p')<cr>
                echo 'sharing registers'
            endif
            let g:registerShare = !g:registerShare
        endfunction
        nnoremap <leader>+ :call RegisterShareToggle()<cr>

        call RegisterShareToggle()

    " undo
        inoremap <cr> <C-g>u<cr>
        inoremap . <C-g>u.
        inoremap , <C-g>u,

    " spell toggle
        nnoremap <leader>sp :setlocal spell!<cr>

    " change directory
        nnoremap <leader>cd :execute "cd %:h"<cr>:pwd<cr>

" ------------------------------------------------------------------------- "

"
"                                     GUI
" ------------------------------------------------------------------------- "
    if has("gui_running")
        syntax on
        set guifont=Consolas:h11:cANSI:qDRAFT

        set guioptions-=m  "remove menu bar
        set guioptions-=T  "remove toolbar
        set guioptions-=r  "remove right-hand scroll bar
        set guioptions-=L  "remove left-hand scroll bar
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
