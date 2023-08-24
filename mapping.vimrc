" ========== leader映射 =========== "

    let g:mapleader="'"
    " 取消当前leader键的原始功能 "
    noremap  '   <nop>
    noremap  ''  <nop>

" ---------- leader映射 ----------- "

" ========== 基础映射 ========== "

    " 方向键 禁用方向键(MIT 推荐) "
    noremap   <left>   <nop>
    noremap   <right>  <nop>
    noremap   <up>     <nop>
    noremap   <down>   <nop>
    inoremap  <left>   <nop>
    inoremap  <right>  <nop>
    inoremap  <up>     <nop>
    inoremap  <down>   <nop>

    " 方向键 全模式映射 "
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

    " 方向键 全模式跨词移动 "
    noremap   <c-s-h>  <s-left>
    noremap   <c-s-l>  <s-right>
    inoremap  <c-s-h>  <s-left>
    inoremap  <c-s-l>  <s-right>
    cnoremap  <c-s-h>  <s-left>
    cnoremap  <c-s-l>  <s-right>

    " 不常用键映射 "
    nmap  H  ^
    nmap  L  $
    nmap  M  %
    vmap  H  ^
    vmap  L  $
    vmap  M  %
    omap  H  ^
    omap  L  $
    omap  M  %
    
    " s和x删除不进入缓存 "
    nnoremap  s  "_s
    nnoremap  S  "_S
    nnoremap  x  "_x
    nnoremap  X  "_X
    vnoremap  s  "_s
    vnoremap  S  "_S
    vnoremap  x  "_x
    vnoremap  X  "_X
    onoremap  s  "_s
    onoremap  S  "_S
    onoremap  x  "_x
    onoremap  X  "_X

    " 向前的motion 包含当前字符 "
    onoremap  0  v0
    onoremap  ^  v^
    onoremap  b  vb
    onoremap  F  vF
    onoremap  T  vT

    " 可视模式直接搜索当前选择内容 "
    vnoremap / "-y:let @/=@-<cr>/<cr>N

" ---------- 基础映射 ---------- "

" ========== 功能映射 ========== "

    " Insert模式 jk 退出 "
    inoremap  jk  <esc>

    " 清空搜索 "
    nnoremap  <silent> <leader>/  <esc>:let @/ = ""<cr>

" ---------- 功能映射 ---------- "

" ========== 插件映射 ========== "

    " NERDTree映射 "
    nnoremap  <leader>nn  <esc>:NERDTree<cr>
    nnoremap  <leader>nf  <esc>:NERDTreeFind<cr>
    nnoremap  <leader>nt  <esc>:NERDTreeToggle<cr>
    nnoremap  <leader>nm  <esc>:NERDTreeMirror<cr>
    vnoremap  <leader>nn  <esc>:NERDTree<cr>
    vnoremap  <leader>nf  <esc>:NERDTreeFind<cr>
    vnoremap  <leader>nt  <esc>:NERDTreeToggle<cr>
    vnoremap  <leader>nm  <esc>:NERDTreeMirror<cr>
    onoremap  <leader>nn  <esc>:NERDTree<cr>
    onoremap  <leader>nf  <esc>:NERDTreeFind<cr>
    onoremap  <leader>nt  <esc>:NERDTreeToggle<cr>
    onoremap  <leader>nm  <esc>:NERDTreeMirror<cr>
    
    " easymotion映射 "
    let g:EasyMotion_do_mapping = 0 " 禁用默认映射
    nnoremap  <leader>f  <Plug>(easymotion-bd-f)
    nnoremap  <leader>t  <Plug>(easymotion-bd-t)
    vnoremap  <leader>f  <Plug>(easymotion-bd-f)
    vnoremap  <leader>t  <Plug>(easymotion-bd-t)
    onoremap  <leader>f  v<Plug>(easymotion-bd-f)
    onoremap  <leader>t  v<Plug>(easymotion-bd-t)

" ---------- 插件映射 ---------- "
