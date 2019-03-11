imap <tab> <Plug>snipMateNextOrTrigger
imap <tab> <Plug>snipMateNextOrTrigger


function! GetHora()
    return strftime("%H")+0
endfunction!

function! Ternario(cond, st, nd)
    if a:cond
        return a:st
    else
        return a:nd
    endif
endfunction
