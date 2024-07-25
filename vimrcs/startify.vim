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
      \ { 'n': ['New Typed Buffer', 'call StartifyNewTypedBuffer()'] },
      \ { 'p': ['New Past Buffer', 'call StartifyNewPastBuffer()'] },
      \ ]
function! StartifyNewTypedBuffer() 
    enew
    execute 'set filetype='.input('filetype=')
endfunction
function! StartifyNewPastBuffer()
    enew
    execute "norm i\<s-insert>\<esc>"
endfunction
