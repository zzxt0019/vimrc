set easymotion
" set sneak
set NERDTree
set surround
set multiple-cursors
set commentary
set ReplaceWithRegister
set argtextobj
set exchange
" set textobj-entire
set highlightedyank
" set vim-paragraph-motion
" set vim-indent-object
set matchit
set quickscope


set lookupkeys=<Tab>,<Down>,<Up>,<Enter>,<Left>,<Right>,<C-Down>,<C-Up>,<PageUp>,<PageDown>,<C-Q>

# ===== idea Action ===== 
    " set trackactionids

    # 重命名 
    map <leader><leader>re <Action>(RenameElement)
    # 引入变量 
    map <leader><leader>va <Action>(IntroduceVariable)
    # 新建 
    map <leader><leader>ne <Action>(NewElement)
    # 全局查找 
    map <leader><leader>ff <Action>(FindInPath)

    # idea更好的实现 
    nmap <c-o>  <Action>(Back)
    nmap <c-i>  <Action>(Forward)
    nmap J      <Action>(EditorJoinLines)
    map <c-s-j> <Action>(MoveStatementDown)
    map <c-s-k> <Action>(MoveStatementUp)
    
# ===== idea Action ===== 

# ===== 自定义 ===== 


    let g:If = "koif (pa ) {jo}2k$F)"
    let g:IfNull = "koif (pa == null) {jo}k^"
    let g:IfNotNull = "koif (pa != null) {jo}k^"
    let g:IfEquals = "koif (Objects.equals(pa, )) {jo}2k$F)h"
    let g:IfNotEquals = "koif (!Objects.equals(pa, )) {jo}2k$F)h"

    vnoremap <silent> <leader>iff y<esc>:let @-=g:If<cr>@-:let @-=""<cr>i
    nnoremap <silent> <leader>iff yiw<esc>:let @-=g:If<cr>@-:let @-=""<cr>i

    vnoremap <silent> <leader>ifnu y<esc>:let @-=g:IfNull<cr>@-:let @-=""<cr>
    nnoremap <silent> <leader>ifnu yiw<esc>:let @-=g:IfNull<cr>@-:let @-=""<cr>
    
    vnoremap <silent> <leader>ifnn y<esc>:let @-=g:IfNotNull<cr>@-:let @-=""<cr>
    nnoremap <silent> <leader>ifnn yiw<esc>:let @-=g:IfNotNull<cr>@-:let @-=""<cr>

    vnoremap <silent> <leader>ifeq y<esc>:let @-=g:IfEquals<cr>@-:let @-=""<cr>i
    nnoremap <silent> <leader>ifeq yiw<esc>:let @-=g:IfEquals<cr>@-:let @-=""<cr>i

    vnoremap <silent> <leader>ifne y<esc>:let @-=g:IfNotEquals<cr>@-:let @-=""<cr>i
    nnoremap <silent> <leader>ifne yiw<esc>:let @-=g:IfNotEquals<cr>@-:let @-=""<cr>i

    # goto class head 
    nnoremap <silent> <leader>hc gg/public class<cr>:let @/=""<cr>zz
    nnoremap <silent> <leader>hh gg/public class<cr>:let @/=""<cr>zz
    # goto method head 
    nnoremap <silent> <leader>hf [m
    nnoremap <silent> <leader>hm [m

" ===== 自定义 ===== "
