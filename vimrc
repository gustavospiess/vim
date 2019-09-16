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
    let maplocalleader = 'ç'
    let mapleader = 'ç'
" ------------------------------------------------------------------------- "

source ~/.vim/vundle_plugins.vim

source ~/.vim/flags.vim
source ~/.vim/gui_conf.vim
source ~/.vim/remaps.vim
source ~/.vim/autocmd.vim
source ~/.vim/spell.vim

source ~/.vim/vimpanel_conf.vim
source ~/.vim/vimwiki_conf.vim
source ~/.vim/ledger_conf.vim
source ~/.vim/scratch_conf.vim
source ~/.vim/snipmate_conf.vim
source ~/.vim/vimtex_conf.vim
source ~/.vim/comment_conf.vim

source ~/.vim/ft_config.vim

source ~/.vim/menu_test.vim

" ---------------------------------------------------------------------------- "

" TODO: criar como pluggin
" TODO: referenciar http://www.nilc.icmc.usp.br/tep2/download.htm

set thesaurus=~\.vim\base_tep2\antonimos.txt,~\.vim\base_tep2\sinonimos.txt

" TODO: create file to configure it
let g:easytags_suppress_ctags_warning=1
let g:easytags_async=1
let g:easytags_auto_highlight=0

let g:markdown_enable_insert_mode_mappings=0

let g:crunch_result_type_append = 0
" ---------------------------------------------------------------------------- "

