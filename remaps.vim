"                                    remaps
" ------------------------------------------------------------------------- "
    " Search centralized
        nnoremap n nzz
        nnoremap N Nzz
        nnoremap * *zz
        nnoremap # #zz
        nnoremap gn gnzz

    " block navigation
        nnoremap [[ :silent let @" = @/<cr>?{<cr>:silent let @/ = @"<cr>
        nnoremap [] :silent let @" = @/<cr>?}<cr>:silent let @/ = @"<cr>
        nnoremap ][ :silent let @" = @/<cr>/}<cr>:silent let @/ = @"<cr>
        nnoremap ]] :silent let @" = @/<cr>/{<cr>:silent let @/ = @"<cr>

    " paragraph/sentence navigation
        nnoremap ) w)F 
        nnoremap ( (F 
        "nnoremap } j}k$
        "nnoremap { k{j0

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
        let g:defautFiletype = ''
        function! GetDefaultFiletype()
            "let g:defautFiletype = input('filetype: ', g:defautFiletype, 'filetype')
            let g:defautFiletype = tlib#input#List('s', 'filetype: ', getcompletion('', 'filetype'), [], g:defautFiletype)
            return g:defautFiletype
        endfunction
        nnoremap <leader>ft :let &filetype=GetDefaultFiletype()<cr>

    " Case sensitiveess remap
        cnoreabbrev W! w!
        cnoreabbrev Q! q!
        cnoreabbrev Qall! qall!
        cnoreabbrev Wq wq
        cnoreabbrev Wa wa
        cnoreabbrev wQ wq
        cnoreabbrev WQ wq
        cnoreabbrev W w
        cnoreabbrev Q q
        cnoreabbrev Qall qall

    " Scratch
        nnoremap <leader>tf :setlocal buftype=<cr>
        nnoremap <leader>ts :setlocal buftype=nofile<cr>
        nnoremap <leader>nf <C-w>n
        nnoremap <leader>ns <C-w>n:setlocal buftype=nofile<cr>

    " undo
        inoremap <cr> <C-g>u<cr>
        inoremap . <C-g>u.
        inoremap , <C-g>u,

    " spell toggle
        nnoremap <leader>sp :setlocal spell!<cr>

    " change directory
        nnoremap <leader>cd :execute "cd %:h"<cr>:pwd<cr>

    " Fold as object (iz)
        xnoremap iz :<C-U>silent!normal![zV]z<CR>
        onoremap iz :normal viz<CR>


    "

" ------------------------------------------------------------------------- "
