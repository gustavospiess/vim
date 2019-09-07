"                                    Vundle
" ------------------------------------------------------------------------- "
    filetype off
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

    " Latex
    Plugin 'lervag/vimtex'

    " Scratch
    Plugin 'mtth/scratch.vim'

    "Snipets
    Plugin 'MarcWeber/vim-addon-mw-utils'
    Plugin 'garbas/vim-snipmate'
    Plugin 'honza/vim-snippets'

    " Gradle
    Plugin 'tpope/vim-dispatch'

    " Marks
    Plugin 'vim-scripts/tmarks'

    " Markdown
    Plugin 'gabrielelana/vim-markdown'

    " Comment as object
    Plugin 'glts/vim-textobj-comment'

    " Comment as action
    Plugin 'tomtom/tcomment_vim'

    " Plant UML
    Plugin 'scrooloose/vim-slumlord'
    Plugin 'aklt/plantuml-syntax'

    " Replace with registry
    Plugin 'vim-scripts/ReplaceWithRegister'

    " Ctags
    Plugin 'xolox/vim-easytags'

    "Required by other pluggins
    Plugin 'tomtom/tlib_vim'
    Plugin 'kana/vim-textobj-user'
    Plugin 'tpope/vim-repeat'
    Plugin 'xolox/vim-misc'

    call vundle#end()
    filetype plugin indent on
" ------------------------------------------------------------------------- "
