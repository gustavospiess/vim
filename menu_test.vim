function! NewMenuItenm(desc, cmd, bind)
    return {"desc": a:desc, "cmd": a:cmd, 'bind':a:bind}
endfunction

let g:yankMenuRegister = '+'

let g:menu = [   NewMenuItenm('Yank file path',              'let @'.g:yankMenuRegister.' = expand(''%:p'')    | let @" = @'.g:yankMenuRegister.' | let @0 = @'.g:yankMenuRegister.' | echo @'.g:yankMenuRegister, 'p'),
                \NewMenuItenm('Yank folder path',            'let @'.g:yankMenuRegister.' = expand(''%:h'')    | let @" = @'.g:yankMenuRegister.' | let @0 = @'.g:yankMenuRegister.' | echo @'.g:yankMenuRegister, 'f'),
                \NewMenuItenm('Yank fine name no extension', 'let @'.g:yankMenuRegister.' = expand(''%:t:r'')  | let @" = @'.g:yankMenuRegister.' | let @0 = @'.g:yankMenuRegister.' | echo @'.g:yankMenuRegister, 'N'),
                \NewMenuItenm('Yank file name',              'let @'.g:yankMenuRegister.' = expand(''%:t'')    | let @" = @'.g:yankMenuRegister.' | let @0 = @'.g:yankMenuRegister.' | echo @'.g:yankMenuRegister, 'n'),
                \NewMenuItenm('Yank file extension',         'let @'.g:yankMenuRegister.' = expand(''%:e'')    | let @" = @'.g:yankMenuRegister.' | let @0 = @'.g:yankMenuRegister.' | echo @'.g:yankMenuRegister, 'e'),
                \NewMenuItenm('Yank current working dir',    'let @'.g:yankMenuRegister.' = getcwd()           | let @" = @'.g:yankMenuRegister.' | let @0 = @'.g:yankMenuRegister.' | echo @'.g:yankMenuRegister, 'd')
            \]

let g:menuDesc = []
let g:menuCmd = []

for menuItem in g:menu
    call add(g:menuDesc, menuItem.desc.' ('.mapleader.'y'.menuItem['bind'].')')
    call add(g:menuCmd, menuItem.cmd)
endfor

function! ExecMenu()
    execute g:menuCmd[tlib#input#List('si', 'Command:', g:menuDesc)-1]
endfunction

function! ExecMenuItem(menu)
    execute a:menu['cmd']
endfunction

nnoremap <leader>yy :call ExecMenu()<cr>


let s:index = 0
for item in g:menu
    let s:cmd = ':call ExecMenuItem(g:menu['.s:index.'])<cr>'
    let s:cmd = 'nnoremap <leader>y'.item['bind'].' '.s:cmd
    exe s:cmd
    let s:index = s:index + 1
endfor



