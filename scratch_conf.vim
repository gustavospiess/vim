"                           Scratch Configurations
" ------------------------------------------------------------------------- "
    let g:scratch_persistence_file = "~/.vim/tmp/scratch.tmp"
    let g:scratch_autohide = 1
    let g:scratch_insert_autohide = 1

    let g:scratch_no_mappings = 1

    nmap gs :Scratch<cr>
    nmap gS :Scratch!<cr>
    xmap gs :ScratchInsert<cr>
    xmap gS :ScratchInsert!<cr>

" ------------------------------------------------------------------------- "
