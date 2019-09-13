function! NewMenuItenm(desc, cmd, bind)
    return {"desc": a:desc, "cmd": a:cmd, 'bind':a:bind}
endfunction

let g:yankMenuRegister = '+'

let g:menu = [NewMenuItenm('Yank file path', 'let @'.g:yankMenuRegister.' = expand(''%:p'') | echo @'.g:yankMenuRegister, 'p'),
                \NewMenuItenm('Yank folder path', 'let @'.g:yankMenuRegister.' = expand(''%:h'') | echo @'.g:yankMenuRegister, 'f')]

let g:menuDesc = []
let g:menuCmd = []

for menuItem in g:menu
    call add(g:menuDesc, menuItem.desc.' (çy'.menuItem['bind'].')')
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



