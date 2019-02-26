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

    " Ledger
    Plugin 'ledger/vim-ledger'

    " Scratch
    Plugin 'mtth/scratch.vim'

    "Snipet test
    Plugin 'MarcWeber/vim-addon-mw-utils'
    Plugin 'tomtom/tlib_vim'
    Plugin 'garbas/vim-snipmate'
    Plugin 'honza/vim-snippets'

    call vundle#end()
    filetype plugin indent on
" ------------------------------------------------------------------------- "
