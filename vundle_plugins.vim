"                                    Vundle
" ------------------------------------------------------------------------- "
    filetype off
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    " plugin manager:
    Plugin 'VundleVim/Vundle.vim'

    " Version managemente / undo
        " Undo tree
        Plugin 'mbbill/undotree'
        " Git management:
        Plugin 'tpope/vim-fugitive'

    " fuzzy finder
        " fzf
        Plugin 'junegunn/fzf.vim'
        Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
        " rooter
        Plugin 'airblade/vim-rooter'

    " data base access:
    Plugin 'vim-scripts/dbext.vim'

    " Matching:
    Plugin 'tmhedberg/matchit'
    Plugin 'jiangmiao/auto-pairs'

    " Tasks:
    Plugin 'tpope/vim-dispatch'

    " Scratch:
    " Plugin 'mtth/scratch.vim'

    " Ctags
    Plugin 'ludovicchabant/vim-gutentags'

    " Spelling:
        " pt_BR:
        Bundle 'mateusbraga/vim-spell-pt-br'

    " Looking :
        " status row:
        Plugin 'vim-airline/vim-airline'
        " color schemas:
        Plugin 'joshdick/onedark.vim'
        " Plugin 'vim-scripts/oceanlight'
        " Plugin 'altercation/vim-colors-solarized'

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
        " Plugin 'mattn/calendar-vim'

    " File types:
        " Ledger:
        " Plugin 'ledger/vim-ledger'
        " Latex:
        Plugin 'lervag/vimtex'
        " Markdown:
        Plugin 'plasticboy/vim-markdown'
        " Plant UML:
        " Plugin 'scrooloose/vim-slumlord'
        " Plugin 'aklt/plantuml-syntax'

    " Snippets:
        " Snippet engine:
        " Plugin 'MarcWeber/vim-addon-mw-utils'
        Plugin 'SirVer/ultisnips'
        " Snippet base:
        " Plugin 'garbas/vim-snipmate'
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

    " C# programming
        Plugin 'OmniSharp/omnisharp-vim'

    " Java programming
        " Plugin 'vim-scripts/javacomplete'
        " Plugin 'artur-shaik/vim-javacomplete2'

    " Python programmin
        " Plugin 'Integralist/vim-mypy'

    " Required by other plugins:
        Plugin 'tomtom/tlib_vim'
        Plugin 'kana/vim-textobj-user'
        Plugin 'tpope/vim-repeat'
        Plugin 'xolox/vim-misc'
        Plugin 'arecarn/vim-selection'
        Plugin 'godlygeek/tabular'

    call vundle#end()
" ------------------------------------------------------------------------- "
