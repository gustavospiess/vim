" Configuration for Tex files

augroup tex_config
    autocmd!
    autocmd filetype tex setlocal noswapfile
    autocmd filetype tex setlocal spell
augroup end


augroup tex_surrounds
    autocmd!
    "c create code inline block
    autocmd FileType tex let b:surround_99 = "\\\1command: \1{\r}" 
    autocmd FileType tex let b:surround_34 = "``\r\"" 
    autocmd FileType tex let b:surround_39 = "`\r'" 
augroup END


