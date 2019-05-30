
let g:eval_put = 1
let g:eval_print = 1
let g:eval_delete = 1

function! Eval_reselect(type)
    if a:type  == 'visual'
	    silent exe "normal! gv"
    elseif a:type == 'line'
	    silent exe "normal! '[V']"
    elseif a:type == 'char'
	    silent exe "normal! `[v`]"
    endif
endfunction

function! Eval_operator(type)
    let sel_save = &selection
    let &selection = "inclusive"
    let reg_save = @@

    call Eval_reselect(a:type)
    exe "normal! y"

    try
        let l:value = eval(substitute(@@, '\v[ \t\n]', '', 'g'))

        if g:eval_delete
            call Eval_reselect(a:type)
            if g:eval_put
                silent exe "normal! c".l:value.expand("<esc>")
            else
                silent exe "normal! d"
            endif
        elseif g:eval_put
            normal k
            put=l:value
        endif
        if g:eval_print
            echo l:value
        endif

    catch /.*/
        echo 'erro evaluating: '.@@
    endtry
    let &selection = sel_save
    let @@ = reg_save
endf

nnoremap <silent> g= :set opfunc=Eval_operator<cr>g@
nnoremap <silent> g== :normal Vg=<cr>
vnoremap <silent> g= :<C-U>call Eval_operator('visual')<cr>
