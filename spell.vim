"                                    Spell
" ------------------------------------------------------------------------- "

    " Spell check for any Text file (*.txt,*.wiki) and scrachs
    augroup SP
        autocmd!
        autocmd FileType text setlocal spell
        autocmd FileType vimwiki setlocal spell
	    autocmd filetype scratch setlocal spell
	    autocmd filetype gitcommit setlocal spell
    augroup END
" ------------------------------------------------------------------------- "
