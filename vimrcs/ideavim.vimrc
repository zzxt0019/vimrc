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
" set matchit
set quickscope


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

# ===== IdeaVim BUG ===== 

    # 1. 清除寄存器 
    # (vimrc配置为 `noremap <leader>/ :let @/=""`) 
    # :s匹配后清除模式寄存器无效, (同时<silent>不可用), 改为先用/搜索一次 
    nnoremap <leader>/ /<cr>``:let @/=""<cr>

    # 2. hightlightedyank插件 
    # highlightedyank_highlight_duration参数的类型与vim不同, 需转换类型 
    # vim的类型是number ideavim的类型是string 
    let g:highlightedyank_highlight_duration = g:highlightedyank_highlight_duration.""

    # 3. 向左motion不包含当前字符 
    # (vim: 映射 b->vb F->vF T->vT) 
    # ideavim没有实现 dv yv cv 功能, 因此 清除vim的映射 
    ounmap 0
    ounmap ^
    ounmap b
    ounmap F
    ounmap T
    map <leader>f <Plug>(easymotion-bd-f)
    map <leader>t <Plug>(easymotion-bd-t)

# ===== IdeaVim BUG ===== 

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
