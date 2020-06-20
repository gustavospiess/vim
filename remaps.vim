"                                    remaps
" ------------------------------------------------------------------------- "

    " very magic search
        nnoremap / /\v
        vnoremap / /\v
        nnoremap ? ?\v
        vnoremap ? ?\v

    " .vimrc quik open
        "ev for edit vimrc
        nnoremap <leader>ev :silent tabe $MYVIMRC<cr>
        "sv for source vimrc
        nnoremap <leader>sv :silent source $MYVIMRC<cr>

    "set filetype
        nnoremap <leader>ft :Filetypes<cr>

    " spell toggle
        nnoremap <leader>sp :setlocal spell!<cr>

    " change directory
        nnoremap <leader>cd :execute "cd %:h"<cr>:pwd<cr>

        fun! Catch_save()
            try
                write
            catch 
                "if you cannot save it, hide it
                setlocal hidden
            endtry
        endf

    "buffer navigation
        nnoremap <leader>n :call Catch_save()<cr>:bnext<cr>
        nnoremap <leader>p :call Catch_save()<cr>:bprevious<cr>
        nnoremap <leader>a :call Catch_save()<cr>:edit #<cr>
        nnoremap <leader>b :call Catch_save()<cr>:buffers<cr>:edit #
        nnoremap <leader>B :call Catch_save()<cr>:buffers!<cr>:edit #

    "undo tree
        nnoremap <leader>u :UndotreeToggle<cr>:UndotreeFocus<cr>
        nnoremap <leader>U :UndotreeToggle<cr>
    
    "file explorer
        nnoremap <leader>e :Vex<cr>

    if has('nvim')
        tnoremap <C-W>h <C-\><C-N><C-w>h
        tnoremap <C-W>j <C-\><C-N><C-w>j
        tnoremap <C-W>k <C-\><C-N><C-w>k
        tnoremap <C-W>l <C-\><C-N><C-w>l
    endif

" ------------------------------------------------------------------------- "
