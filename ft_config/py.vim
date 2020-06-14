" autocmd BufRead *.py setlocal makeprg=python3\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"\ \&\&\ python3\ %c
autocmd filetype python setlocal makeprg=python3\ %
autocmd filetype python setlocal tabstop=4
autocmd filetype python setlocal nowrap
autocmd filetype python setlocal go+=b
autocmd filetype python setlocal foldmethod=indent
                   
autocmd filetype python nmap <F5> :!python %<CR>
