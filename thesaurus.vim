
let g:thesaurus_dict = {'synonym_pt': expand('<sfile>:p:h').'\base_tep2\sinonimos.txt',
    \'antonym_pt': expand('<sfile>:p:h').'\base_tep2\antonimos.txt',
    \'rhyme_pt': expand('<sfile>:p:h').'\base_tep2\rimas_1.txt,'.expand('<sfile>:p:h').'\base_tep2\rimas_2.txt'}

function! Thesaurus_completion(ArgLead, CmdLine, CursorPos)
    let l:thesaurus_list = keys(g:thesaurus_dict)
    return filter(l:thesaurus_list, 'v:val =~# "'.a:ArgLead.'"')
endfunction

function! Thesaurus_set(value)
    let  l:value_list = split(a:value, ' ', 0)
    for item in l:value_list
        if !has_key(g:thesaurus_dict, item)
            throw 'THE001 - "'.item.'" is not a valid option'
        endif
    endfor
    let l:thesaurus_value = ""
    for item in l:value_list
        let l:thesaurus_value = l:thesaurus_value.",".g:thesaurus_dict[item]
    endfor
    execute "set thesaurus=".l:thesaurus_value
endfunction

command! -nargs=* -complete=customlist,Thesaurus_completion Thesaurus call Thesaurus_set('<args>')
