" ========== leader映射 =========== "

    let g:mapleader="'"
    " 取消当前leader键的原始功能 "
    nnoremap  '   <nop>
    xnoremap  '   <nop>
    onoremap  '   <nop>
    

" ---------- leader映射 ----------- "

" ========== 基础映射 ========== "

    " 禁用方向键(MIT 推荐) "
    noremap   <left>   <nop>
    noremap   <right>  <nop>
    noremap   <up>     <nop>
    noremap   <down>   <nop>
    inoremap  <left>   <nop>
    inoremap  <right>  <nop>
    inoremap  <up>     <nop>
    inoremap  <down>   <nop>

    " 更方便的ctrl操作 - 方向键全模式映射 "
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

    " 更方便的ctrl操作 - 方向键左右跨词映射 "
    noremap   <c-s-h>  <s-left>
    noremap   <c-s-l>  <s-right>
    inoremap  <c-s-h>  <s-left>
    inoremap  <c-s-l>  <s-right>
    cnoremap  <c-s-h>  <s-left>
    cnoremap  <c-s-l>  <s-right>

    " 更方便的ctrl操作 - 左右删除 "
    inoremap  <c-n>  <backspace>
    inoremap  <c-m>  <delete>
    inoremap  <cr>   <c-m>

    " 不常用键映射 "
    nmap  H  ^
    nmap  L  $
    nmap  M  %
    xmap  H  ^
    xmap  L  $
    xmap  M  %
    omap  H  ^
    omap  L  $
    omap  M  %
    
    " s和x删除不进入缓存 "
    nnoremap  s  "_s
    nnoremap  S  "_S
    nnoremap  x  "_x
    nnoremap  X  "_X
    xnoremap  s  "_s
    xnoremap  S  "_S
    xnoremap  x  "_x
    xnoremap  X  "_X
    onoremap  s  "_s
    onoremap  S  "_S
    onoremap  x  "_x
    onoremap  X  "_X

    " 向前的motion 包含当前字符 "
    if !has("ide")  " ideavim不支持v-motion操作
        onoremap  0  v0
        onoremap  ^  v^
        onoremap  b  vb
        onoremap  F  vF
        onoremap  T  vT
    endif

    " 可视模式直接搜索当前选择内容 "
    xnoremap <silent> / "-y:let @/=@-<cr>/<cr>N
    xnoremap <silent> ? "-y:let @/=@-<cr>?<cr>N

    if !has("ide")  " vim bug: @/为空时n/N搜索空格
        nnoremap <silent> n :call CommandN('n')<cr>
        xnoremap <silent> n :call CommandN('n')<cr>
        onoremap <silent> n :call CommandN('n')<cr>
        nnoremap <silent> N :call CommandN('N')<cr>
        xnoremap <silent> N :call CommandN('N')<cr>
        onoremap <silent> N :call CommandN('N')<cr>
    endif

    function! CommandN(n)
        if @/ != "" && ( a:n == 'n' || a:n == 'N' )
            execute 'norm! '.a:n
        endif
    endfunction
    

" ---------- 基础映射 ---------- "

" ========== 功能映射 ========== "

    " Insert模式 jk 退出 "
    inoremap  jk  <esc>

    " 清空搜索 "
    if !has("ide")
        nnoremap  <silent> <leader>/  <esc>:let @/ = ""<cr>
    elseif  " ideavim
        " :s匹配后清除模式寄存器无效, (同时<silent>不可用), 改为先用/搜索一次 "
        nnoremap <leader>/ /<cr>``:let @/=""<cr>
    endif

" ---------- 功能映射 ---------- "

" ========== 插件映射 ========== "

    " NERDTree映射 "
    nnoremap  <leader>nn  <esc>:NERDTree 
    nnoremap  <leader>nf  <esc>:NERDTreeFind<cr>
    nnoremap  <leader>nt  <esc>:NERDTreeToggle<cr>
    xnoremap  <leader>nn  <esc>:NERDTree 
    xnoremap  <leader>nf  <esc>:NERDTreeFind<cr>
    xnoremap  <leader>nt  <esc>:NERDTreeToggle<cr>
    onoremap  <leader>nn  <esc>:NERDTree 
    onoremap  <leader>nf  <esc>:NERDTreeFind<cr>
    onoremap  <leader>nt  <esc>:NERDTreeToggle<cr>
    
    " easymotion映射 "
    let g:EasyMotion_do_mapping = 0 " 禁用默认映射
    nnoremap  <leader>f  <Plug>(easymotion-bd-f)
    nnoremap  <leader>t  <Plug>(easymotion-bd-t)
    xnoremap  <leader>f  <Plug>(easymotion-bd-f)
    xnoremap  <leader>t  <Plug>(easymotion-bd-t)
    onoremap  <leader>f  v<Plug>(easymotion-bd-f)
    onoremap  <leader>t  v<Plug>(easymotion-bd-t)

    if has("ide")  " ideavim不支持v-motion操作
        map <leader>f <Plug>(easymotion-bd-f)
        map <leader>t <Plug>(easymotion-bd-t)
    endif

    " fzf 映射搜索"
    command! Nmaps call fzf#vim#maps('n', 0)
    command! Imaps call fzf#vim#maps('i', 0)
    command! Cmaps call fzf#vim#maps('c', 0)
    command! Vmaps call fzf#vim#maps('v', 0)
    command! Xmaps call fzf#vim#maps('x', 0)
    command! Smaps call fzf#vim#maps('s', 0)
    command! Omaps call fzf#vim#maps('o', 0)
    command! Tmaps call fzf#vim#maps('t', 0)
    command! Lmaps call fzf#vim#maps('l', 0)

    " multi-cursors "
    let g:multi_cursor_use_default_mapping = 0
    let g:multi_cursor_start_word_key      = '<A-n>'
    let g:multi_cursor_select_all_word_key = '<Nop>'
    let g:multi_cursor_start_key           = 'g<A-n>'
    let g:multi_cursor_select_all_key      = '<Nop>'
    let g:multi_cursor_next_key            = '<A-n>'
    let g:multi_cursor_prev_key            = '<A-p>'
    let g:multi_cursor_skip_key            = '<A-x>'
    let g:multi_cursor_quit_key            = '<Esc>'

" ---------- 插件映射 ---------- "
