function! VimrcPath()
    let l:path = $MYVIMRC
    let l:split = '/'
    if match(l:path, l:split) == -1
        let l:split = '\'
    endif
    let l:index = match(l:path, l:split)
    let l:length = l:index
    while l:index != -1
        let l:path = strpart(l:path, l:index + 1)
        let l:index = match(l:path, l:split)
        let l:length += l:index + 1
    endwhile
    let l:length += l:index + 1

    return strpart($MYVIMRC, 0, l:length).l:split
endfunction

let g:VimrcPath = VimrcPath()
execute "source ".g:VimrcPath.'plug.vimrc'
execute "source ".g:VimrcPath.'base.vimrc'
execute "source ".g:VimrcPath.'mapping.vimrc'
