"                                    remaps
" ------------------------------------------------------------------------- "

    " Very magic search
        nnoremap / /\v
        vnoremap / /\v
        nnoremap ? ?\v
        vnoremap ? ?\v

    " Spell toggle
        nnoremap <leader>sp :setlocal spell!<cr>

    " Change file type
        nnoremap <leader>t :Filetypes<cr>

    fun! Catch_save()
        try
            write
        catch 
            "if you cannot save it, hide it
            setlocal hidden
        endtry
    endf

    " Buffer navigation
        nnoremap <leader>n :call Catch_save()<cr>:bnext<cr>
        nnoremap <leader>p :call Catch_save()<cr>:bprevious<cr>
        nnoremap <leader>a :call Catch_save()<cr>:buffer #<cr>
        nnoremap <leader>b :call Catch_save()<cr>:Buffers<cr>
        nnoremap <leader>B :call Catch_save()<cr>:buffers!<cr>:buffer #
        nnoremap <leader>w :call Catch_save()<cr>:Windows<cr>
        nnoremap <leader>d :call Catch_save()<cr>:bwipeout<cr>

    " Forece to change habits
        nnoremap <C-w>q :echo 'Utilizar çd/çn/çp/çb'<cr>

    " Finders
        nnoremap <leader>f :call Catch_save()<cr>:GFiles<cr>
        nnoremap <leader>F :call Catch_save()<cr>:Files<cr>
        nnoremap <leader>r :call Catch_save()<cr>:Rg<cr>
        nnoremap <leader>l :call Catch_save()<cr>:Lines<cr>
        nnoremap <leader>L :call Catch_save()<cr>:BLines<cr>
        nnoremap <leader>m :call Catch_save()<cr>:Marks<cr>

    " Undo tree
        nnoremap <leader>u :UndotreeToggle<cr>:UndotreeFocus<cr>
        nnoremap <leader>U :UndotreeToggle<cr>

    " Quickfix
        nnoremap <leader>qq :copen<cr>
        nnoremap <leader>qQ :cclose<cr>
        nnoremap <leader>qn :cnext<cr>
        nnoremap <leader>qp :cprevious<cr>
    
    " File explorer
        nnoremap <leader>e :Vex<cr>

    " Git access
        nnoremap <leader>g :Gstatus<cr>

    if has('nvim')
        tnoremap <C-W>h <C-\><C-N><C-w>h
        tnoremap <C-W>j <C-\><C-N><C-w>j
        tnoremap <C-W>k <C-\><C-N><C-w>k
        tnoremap <C-W>l <C-\><C-N><C-w>l
    endif

    nnoremap <leader>] <C-]>
    nnoremap <C-\> <C-]>
    nnoremap <C-]> <C-]>

" ------------------------------------------------------------------------- "
