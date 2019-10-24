" Configuration for SQL files
"
" Snippets:

augroup sql_snippets
    autocmd!
    autocmd filetype sql,plsql SnipMateLoadScope sql plsql
augroup end

augroup sql_extensions
    autocmd!
    autocmd BufRead  *.fnc,*.prc,*.trg,*.vw,*.pck,*.seq set filetype=plsql
augroup end

let omni_sql_include_owner=0
