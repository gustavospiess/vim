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
    set smartcase
    set incsearch

    set formatoptions=tcq2n

    set autoread
    set autowrite

    set nocompatible
    set backup

    set scrolloff=7

    set undofile
    set undolevels=3000

    set backupdir=~/.vim/backup/
    set directory=~/.vim/swap/
    set undodir=~/.vim/undo/

    set spellfile="~/.vim/bundle/vim-spell-pt-br/spell/pt.utf-8.add"
    set spelllang=pt_br,en_us
    set complete=.,w,t,b,u,i,

    colorscheme onedark
    " colorscheme solarized

    set diffopt+=iwhite

    set number relativenumber

    set wildmenu

    "yank and past to/from clipboard
    set clipboard=autoselectplus

    set conceallevel=1

    filetype plugin indent on
    syntax on

" ------------------------------------------------------------------------- "

    let g:xml_syntax_folding=1

" ------------------------------------------------------------------------- "
"                           inline calculator conf

    let g:crunch_result_type_append = 0

" ------------------------------------------------------------------------- "
"                          Auto pair on insert conf

    let g:AutoPairsFlyMode = 1

" ------------------------------------------------------------------------- "
"                                  netrw conf

    let g:netrw_banner = 0
    let g:netrw_liststyle = 3
    let g:netrw_browse_split = 4
    let g:netrw_altv = 1
    let g:netrw_winsize = 25

" ------------------------------------------------------------------------- "
"                              UltiSnips confi

    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
    let g:UltiSnipsSnippetDirectories=[expand('<sfile>:p:h').'/personal_snippets']

" ------------------------------------------------------------------------- "
"                           vimtex configurations:

    let g:tex_flavor='latex'
    let g:vimtex_view_method='zathura'
    let g:vimtex_quickfix_mode=0
    let g:tex_conceal='abdmg'

" ------------------------------------------------------------------------- "
"                                  Vimwiki

    let wiki = {}
    let wiki.path = '~/vimwiki/'
    let wiki.nested_syntaxes = {
                \'yaml': 'yaml',
                \'xml': 'xml',
                \'text': 'text',
                \'sql': 'sql',
                \'rtf': 'rtf',
                \'pascal': 'pascal',
                \'json' : 'json',
                \'javascript': 'javascript',
                \'java': 'java',
                \'jsp': 'jsp',
                \'html': 'html',
                \'diff': 'diff',
                \'bash': 'sh',
                \'css': 'css'}
    let g:vimwiki_list = [wiki]
    let g:vimwiki_folding = 'syntax'

" ------------------------------------------------------------------------- "
