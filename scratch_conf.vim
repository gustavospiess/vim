"                           Scratch Configurations
" ------------------------------------------------------------------------- "
    let g:scratch_persistence_file = "~/.vim/tmp/scratch.tmp"
    let g:scratch_autohide = 1
    let g:scratch_insert_autohide = 1

    let g:scratch_no_mappings = 1

    function! ConfigureScratch(command)
        execute a:command
        setlocal nospell
        nnoremap <buffer> q <C-w>q
        nnoremap <buffer> <tab> <C-w>q
        nnoremap <buffer> <esc><esc> <C-w>q
        nnoremap <buffer> V 0<c-v>$
        nmap <buffer> yy 0<c-v>$y
        nmap <buffer> Y 0<c-v>$y
        normal G
    endfunction

    nnoremap gs :call ConfigureScratch('Scratch')<cr>
    nnoremap gS :call ConfigureScratch('Scratch!')<cr>
    vnoremap gS :call ConfigureScratch('ScratchSelection!')<cr>
    vnoremap gS :call ConfigureScratch('ScratchSelection!')<cr>

" ------------------------------------------------------------------------- "
