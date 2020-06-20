source ~/.vim/ft_config/sql.vim
source ~/.vim/ft_config/tex.vim
source ~/.vim/ft_config/md.vim
source ~/.vim/ft_config/cs.vim
source ~/.vim/ft_config/py.vim


augroup BIBTEX_FILE
    autocmd!
    autocmd filetype bib setlocal foldmethod=indent
augroup end
