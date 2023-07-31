set surround
set NERDTree
set easymotion
set commentary
set multiple-cursors
set exchange
set highlightedyank
set ReplaceWithRegister

" ===== idea Action ===== "

    " 重命名 "
    nnoremap <leader><leader>re <esc>:action RenameElement<cr>
    " 引入变量 "
    nnoremap <leader><leader>va <esc>:action IntroduceVariable<cr>
    " 新建 "
    nnoremap <leader><leader>ne <esc>:action NewElement<cr>
    nnoremap <leader><leader>nc <esc>:action NewClass<cr>
    nnoremap <leader><leader>nd <esc>:action NewDir<cr>
    " 全局查找 "
    nnoremap <leader><leader>ff <esc>:action FindInPath<cr>
    
" ===== idea Action ===== "

" ===== IdeaVim BUG ===== "

    " 1. 清除寄存器 "
    " (vimrc配置为 `noremap <leader>/ :let @/=""`) "
    " :s匹配后清除模式寄存器无效, (同时<silent>不可用), 改为先用/搜索一次 "
    noremap <leader>/ /<cr>:let @/=""<cr>

    " 2. hightlightedyank插件 "
    " highlightedyank_highlight_duration参数的类型与vim不同, 需转换类型 "
    " vim的类型是number ideavim的类型是string "
    let g:highlightedyank_highlight_duration = g:highlightedyank_highlight_duration.""

    " 3. 向左motion不包含当前字符 "
    " (vim: 映射 b->vb F->vF T->vT) "
    " ideavim没有实现 dv yv cv 功能, 因此 清除vim的映射 "
    ounmap b
    ounmap F
    ounmap T
    map <leader>f <Plug>(easymotion-bd-f)
    map <leader>t <Plug>(easymotion-bd-t)

" ===== IdeaVim BUG ===== "

" ===== Idea 模板 ===== "

    " 1. if!=null "
    vnoremap <leader>ifnn y<esc>koif<space>(<esc>pa<space>!=<space>null){<esc>jo}<esc>
    
" ===== Idea 模板 ===== "
