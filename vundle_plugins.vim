"                                    Vundle
" ------------------------------------------------------------------------- "
    filetype off
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    " plugin manager:
    Plugin 'VundleVim/Vundle.vim'

    " panels and folder navigation:
    Plugin 'mihaifm/vimpanel'

    " data base access:
    Plugin 'vim-scripts/dbext.vim'

    " Git management:
    Plugin 'tpope/vim-fugitive'

    " Matching:
    Plugin 'tmhedberg/matchit'

    " C_tags:
    Plugin 'xolox/vim-easytags'

    " Tasks:
    Plugin 'tpope/vim-dispatch'

    " Scratch:
    Plugin 'mtth/scratch.vim'

    " Spelling:
        " pt_BR:
        Bundle 'mateusbraga/vim-spell-pt-br'

    " Looking :
        " status row:
        Plugin 'vim-airline/vim-airline'
        " color schema:
        Plugin 'joshdick/onedark.vim'

    " Objects:
        " indentation object:
        Plugin 'michaeljsmith/vim-indent-object'
        " entire file object:
        Plugin 'kana/vim-textobj-entire'
        " Comment as object:
        Plugin 'glts/vim-textobj-comment'

    " Organization and note taking:
        " Wiki:
        Plugin 'vimwiki/vimwiki'
        " Calendar:
        Plugin 'mattn/calendar-vim'

    " File types:
        " Ledger:
        Plugin 'ledger/vim-ledger'
        " Latex:
        Plugin 'lervag/vimtex'
        " Markdown:
        Plugin 'gabrielelana/vim-markdown'
        " Plant UML:
        Plugin 'scrooloose/vim-slumlord'
        Plugin 'aklt/plantuml-syntax'

    " Snippets:
        " Snippet engine:
        Plugin 'MarcWeber/vim-addon-mw-utils'
        " Snippet base:
        Plugin 'garbas/vim-snipmate'
        Plugin 'honza/vim-snippets'

    " Pending operator actions:
        " Comment as action:
        Plugin 'tomtom/tcomment_vim'
        " Replace with registry:
        Plugin 'vim-scripts/ReplaceWithRegister'
        " Evaluation:
        Plugin 'arecarn/vim-crunch'
        " surround:
        Plugin 'tpope/vim-surround'

    " Required by other plugins:
        Plugin 'tomtom/tlib_vim'
        Plugin 'kana/vim-textobj-user'
        Plugin 'tpope/vim-repeat'
        Plugin 'xolox/vim-misc'
        Plugin 'arecarn/vim-selection'

    call vundle#end()
" ------------------------------------------------------------------------- "
