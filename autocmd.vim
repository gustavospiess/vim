"
"                              comment surround
" ------------------------------------------------------------------------- "

    function! FtCommentLineSurround()
        if substitute(','.&comments.',', '\v.*,[^fsme]*:([^,]*),.*', '\1', '') == &comments
            return "\r"
        endif
        let l:commentSt = substitute(','.&comments.',', '\v.*,[^fsme]*:([^,]*),.*', '\1', '')
        return l:commentSt."\r"
    endfunction

    
    function! FtCommentBlockSurround()
        if substitute(&comments, '\v.*s[^:]*:([^,]*),.*', '\1', '') == &comments
            return "\r"
        endif
        let l:commentSt = substitute(&comments.',', '\v.*s[^:]*:([^,]*),.*', '\1', '')
        let l:commentEn = substitute(&comments.',', '\v.*e[^:]*:([^,]*),.*', '\1', '')
        return l:commentSt."\r".l:commentEn
    endfunction

    augroup commentSurround
        autocmd!
        "Q create comment block
        autocmd FileType * let b:surround_81  = FtCommentBlockSurround()
        "q create comment line
        autocmd FileType * let b:surround_113 = FtCommentLineSurround()

    augroup END

" ------------------------------------------------------------------------- "
