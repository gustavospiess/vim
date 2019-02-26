"                           Scratch Configurations
" ------------------------------------------------------------------------- "
    let g:scratch_persistence_file = "~/.vim/tmp/scratch.tmp"
    let g:scratch_autohide = 1
    let g:scratch_insert_autohide = 1

    let g:scratch_no_mappings = 1

    function! ConfigureScratch(command)
        execute a:command
        setlocal nonumber
        setlocal norelativenumber
        setlocal nospell
        nnoremap <buffer> q <C-w>q
        nnoremap <buffer> <tab> <C-w>q
        nnoremap <buffer> <esc><esc> <C-w>q
    endfunction

    nnoremap gs :call ConfigureScratch('Scratch')<cr>
    nnoremap gS :call ConfigureScratch('Scratch!')<cr>
    vnoremap gS :call ConfigureScratch('ScratchSelection!')<cr>
    vnoremap gS :call ConfigureScratch('ScratchSelection!')<cr>

" ------------------------------------------------------------------------- "
