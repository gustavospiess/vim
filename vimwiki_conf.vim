"                                  Vimwiki
" ------------------------------------------------------------------------- "
    let wiki = {}
    let wiki.path = '~/vimwiki/'
    let wiki.nested_syntaxes = {
                \'pascal': 'pascal',
                \'sql': 'sql',
                \'java': 'java',
                \'javascript': 'js',
                \'text': 'text',
                \'diff': 'diff',
                \'xml': 'xml',
                \'html': 'html',
                \'rtf': 'rtf',
                \'css': 'css'}
    let g:vimwiki_list = [wiki]
" ------------------------------------------------------------------------- "
