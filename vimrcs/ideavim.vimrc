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
" set quickscope


set lookupkeys=<Tab>,<Down>,<Up>,<Enter>,<Left>,<Right>,<C-Down>,<C-Up>,<PageUp>,<PageDown>,<C-Q>

# ===== idea Action ===== 
    " set trackactionids


    map <space> <nop>|xmap <space> <nop>|omap <space> <nop>
    # 重命名 
    map <space>r <Action>(RenameElement)
    # 引入变量 
    map <space>v <Action>(IntroduceVariable)
    # 新建 
    map <space>n <Action>(NewElement)
    # 全局查找 
    map <space>f <Action>(FindInPath)
    # 整行上下移动
    map <space>j <Action>(MoveStatementDown)
    map <space>k <Action>(MoveStatementUp)
    # 补全 c-s-enter
    map <space><enter> <Action>(EditorCompleteStatement)
    # 优化导入 c-a-o
    map <space>o <Action>(OptimizeImports)
    # 格式化 c-a-l
    map <space>l <Action>(ReformatCode)

    # idea更好的实现 
    map <c-o>    <Action>(Back)
    map <c-i>    <Action>(Forward)
    map J        <Action>(EditorJoinLines)
    
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
