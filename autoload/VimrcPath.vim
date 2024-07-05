function! VimrcPath#VimrcPath()
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
    let g:VimrcPath = strpart($MYVIMRC, 0, l:length)
endfunction
