let g:startify_custom_header = ['']
let g:startify_lists = [
      \ { 'type': 'commands', },
      \ { 'type': 'files',     'header': ['   MRU']            },
      \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ ]
let g:startify_files_number = 5
let g:startify_commands = [
      \ { 'n': ['new Typed Buffer: 输入文件类型', 'call StartifyNewTypedBuffer()'] },
      \ { 'p': ['new Pasted Buffer: 粘贴剪切板内容', 'call StartifyNewPastedBuffer()'] },
      \ { 'r': ['reload Startify','call StartifyReload()'] },
      \ { 'vp': ['update windows环境下 更新VimPlug','call StartifyUpdateVimPlug()'] },
      \ ]
function! StartifyNewTypedBuffer() 
    enew
    execute 'set filetype='.input('filetype=')
endfunction
function! StartifyNewPastedBuffer()
    enew
    execute "norm i\<s-insert>\<esc>"
endfunction
function! StartifyReload()
    let g:startify_custom_header = ['test']
    Startify
endfunction
function! StartifyUpdateVimPlug()
    execute '!powershell -Command "iwr -useb '.
    \ 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim  '.
    \ '|` ni $HOME/vimfiles/autoload/plug.vim -Force"'.
    \ ''
    execute ''
endfunction

