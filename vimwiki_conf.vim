"                                  Vimwiki
" ------------------------------------------------------------------------- "
    let wiki = {}
    let wiki.path = '~/vimwiki/'
    let wiki.nested_syntaxes = {
                \'yaml': 'yaml',
                \'xml': 'xml',
                \'text': 'text',
                \'sql': 'sql',
                \'rtf': 'rtf',
                \'pascal': 'pascal',
                \'json' : 'json',
                \'javascript': 'javascript',
                \'java': 'java',
                \'html': 'html',
                \'diff': 'diff',
                \'css': 'css'}
    let g:vimwiki_list = [wiki]
    let g:vimwiki_folding = 'syntax'

" ------------------------------------------------------------------------- "
"
"                           Vimwiki with Surround
" ------------------------------------------------------------------------- "

    augroup vimwikiSurrounds
        autocmd!
        "P create preformated/code block
        autocmd FileType vimwiki let b:surround_80 = "{{{\n\r\n}}}" 

        "c create code inline block
        autocmd FileType vimwiki let b:surround_99 = "`\r`" 

        "C create preformated/code bloc with syntax
        autocmd FileType vimwiki let b:surround_67 = "{{{\1filetype: \1\n\r\n}}}" 

        "v create file link
        autocmd FileType vimwiki let b:surround_118 = "[[file:\r]]" 
    augroup END

" ------------------------------------------------------------------------- "
