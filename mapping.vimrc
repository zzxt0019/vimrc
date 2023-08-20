" ========== leader映射 =========== "
    let g:mapleader="'"
    " 取消当前leader键的原始功能 "
    noremap  '   <nop>
    noremap  ''  <nop>
" ---------- leader映射 ----------- "

" ========== 基础映射 ========== "

    " 不常用键映射 "
    map  H  ^
    map  L  $
    map  M  %
    
    " s和x删除不进入缓存 "
    noremap  s  "_s
    noremap  S  "_S
    noremap  x  "_x
    noremap  X  "_X

    " 向前的motion 包含当前字符 "
    onoremap  0  v0
    onoremap  ^  v^
    onoremap  b  vb
    onoremap  F  vF
    onoremap  T  vT

" ---------- 基础映射 ---------- "

" ========== 快捷操作 ========== "

    " Insert模式 jk 退出 "
    inoremap  jk  <esc>

    " 清空搜索 "
    nnoremap  <silent> <leader>/  <esc>:let @/ = ""<cr>

" ---------- 快捷操作 ---------- "

" ========== 插件映射 ========== "

    " NERDTree映射 "
    noremap  <leader>nn  <esc>:NERDTree<cr>
    noremap  <leader>nf  <esc>:NERDTreeFind<cr>
    noremap  <leader>nt  <esc>:NERDTreeToggle<cr>
    noremap  <leader>nm  <esc>:NERDTreeMirror<cr>
    
    " easymotion映射 "
    let g:EasyMotion_do_mapping = 0 " 禁用默认映射
    noremap   <leader>f  <Plug>(easymotion-bd-f)
    noremap   <leader>t  <Plug>(easymotion-bd-t)
    onoremap  <leader>f  v<Plug>(easymotion-bd-f)
    onoremap  <leader>t  v<Plug>(easymotion-bd-t)

" ---------- 插件映射 ---------- "

" ========== 选择模式 ========== "
" 1. 清空选择模式下的所有映射 "
    smapclear
" 2. 需要选择模式下映射的单独处理 "

    " MIT 推荐 - 禁用方向键 "
    noremap   <left>   <nop>
    noremap   <right>  <nop>
    noremap   <up>     <nop>
    noremap   <down>   <nop>
    inoremap  <left>   <nop>
    inoremap  <right>  <nop>
    inoremap  <up>     <nop>
    inoremap  <down>   <nop>

    " 全模式 映射方向键 "
    noremap   <c-h>  <left>
    noremap   <c-j>  <down>
    noremap   <c-k>  <up>
    noremap   <c-l>  <right>
    inoremap  <c-h>  <left>
    inoremap  <c-j>  <down>
    inoremap  <c-k>  <up>
    inoremap  <c-l>  <right>
    cnoremap  <c-h>  <left>
    cnoremap  <c-j>  <down>
    cnoremap  <c-k>  <up>
    cnoremap  <c-l>  <right>

    " 插入模式跨词移动 "
    noremap   <c-s-h>  <c-left>
    noremap   <c-s-l>  <c-right>
    inoremap  <c-s-h>  <c-left>
    inoremap  <c-s-l>  <c-right>
    cnoremap  <c-s-h>  <c-left>
    cnoremap  <c-s-l>  <c-right>

" ---------- 选择模式 ---------- "
