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
source ~/.vim/remaps.vim
source ~/.vim/spell.vim

source ~/.vim/vimwiki_conf.vim
source ~/.vim/ledger_conf.vim

source ~/.vim/ft_config.vim
source ~/.vim/menu_test.vim

" ------------------------------------------------------------------------- "

" TODO: criar como pluggin
" TODO: referenciar http://www.nilc.icmc.usp.br/tep2/download.htm

source ~/.vim/thesaurus.vim

" ------------------------------------------------------------------------- "

if has("gui_running")
    set guifont=Consolas:h11:cANSI:qDRAFT
    set guioptions=''
    set guipty
endif
