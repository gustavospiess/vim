"                                    remaps
" ------------------------------------------------------------------------- "
    " Search centralized
        nnoremap n nzz
        nnoremap N Nzz
        nnoremap * *zz
        nnoremap # #zz

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

    " register share toggle
        let g:registerShare = 0
        let g:registerShareOperations = ['y','Y','p','P','d','D','c','C','x','X','r','s']
        function! RegisterShareToggle()
            if g:registerShare
                for operation in g:registerShareOperations 
                    execute 'nnoremap '.operation.' '.operation
                    execute 'vnoremap '.operation.' '.operation
                endfor
                nnoremap <leader>yp :let @" = expand('%:p')<cr>
                echo 'not sharing registers'
            else
                for operation in g:registerShareOperations 
                    execute 'nnoremap '.operation.' "+'.operation
                    execute 'vnoremap '.operation.' "+'.operation
                endfor
                nnoremap <leader>yp :let @+ = expand('%:p')<cr>
                echo 'sharing registers'
            endif
            let g:registerShare = !g:registerShare
        endfunction
        nnoremap <leader>+ :call RegisterShareToggle()<cr>

        call RegisterShareToggle()

    " undo
        inoremap <cr> <C-g>u<cr>
        inoremap . <C-g>u.
        inoremap , <C-g>u,

    " spell toggle
        nnoremap <leader>sp :setlocal spell!<cr>

    " change directory
        nnoremap <leader>cd :execute "cd %:h"<cr>:pwd<cr>
" ------------------------------------------------------------------------- "
