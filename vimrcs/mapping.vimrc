" ========== leader键 ===========

    let g:mapleader="'"
    nmap '' '|xmap '' '|omap '' '

" ---------- leader键 ----------- 

" ========== 方向键映射 ==========
"
    " 禁用方向键 "
    " noremap <left>  <nop>|inoremap <left>  <nop>|cnoremap <left>  <nop>
    " noremap <right> <nop>|inoremap <right> <nop>|cnoremap <right> <nop>
    " noremap <up>    <nop>|inoremap <up>    <nop>|cnoremap <up>    <nop>
    " noremap <down>  <nop>|inoremap <down>  <nop>|cnoremap <down>  <nop>

    " 更方便的ctrl操作 - 方向键全模式映射 "
    noremap <c-h>  <left>|inoremap <c-h>  <left>|cnoremap <c-h>  <left>
    noremap <c-j>  <down>|inoremap <c-j>  <down>|cnoremap <c-j>  <down>
    noremap <c-k>    <up>|inoremap <c-k>    <up>|cnoremap <c-k>    <up>
    noremap <c-l> <right>|inoremap <c-l> <right>|cnoremap <c-l> <right>

" ---------- 方向键映射 -----------

" ========== 基础映射 ==========

    " s和x删除 => 不进入缓存
    nnoremap  s  "_s|xnoremap  s  "_s
    nnoremap  S  "_S|xnoremap  S  "_S
    nnoremap  x  "_x|xnoremap  x  "_x
    nnoremap  X  "_X|xnoremap  X  "_X

    " 向前的motion => 包含当前字符
    if !has("ide")  " ideavim不支持v-motion操作
        onoremap  0  v0
        onoremap  ^  v^
        onoremap  b  vb
        onoremap  F  vF
        onoremap  T  vT
    endif

    " @/为空时n/N搜索 => 不报错
    if !has("ide")  " ideavim不存在这个问题
        nnoremap  <silent> n  :call CommandN('n')<cr>
        xnoremap  <silent> n  :call CommandN('n')<cr>
        onoremap  <silent> n  :call CommandN('n')<cr>
        nnoremap  <silent> N  :call CommandN('N')<cr>
        xnoremap  <silent> N  :call CommandN('N')<cr>
        onoremap  <silent> N  :call CommandN('N')<cr>
    endif

    function! CommandN(n)
        if @/ != "" && ( a:n == 'n' || a:n == 'N' )
            try
                execute 'norm! '.a:n
            catch
            endtry
        endif
    endfunction
    

" ---------- 基础映射 ----------

" ========== 功能映射 ==========

    " 不常用键映射
    nnoremap H ^|xnoremap H ^|onoremap H ^
    nnoremap L $|xnoremap L $|onoremap L $
    nnoremap M %|xnoremap M %|onoremap M %

    " 不常用g映射
    nnoremap gj 10j|xnoremap gj 10j|onoremap gj 10j
    nnoremap gk 10k|xnoremap gk 10k|onoremap gk 10k


    " 回车新建一行
    " nnoremap  <cr>   o<esc>

    " 可视模式直接搜索当前选择内容
    xnoremap  <silent> /  "-y:let @/=@-<cr>/<cr>N
    xnoremap  <silent> ?  "-y:let @/=@-<cr>?<cr>N

    " Insert模式 jk 退出
    inoremap  jk  <esc>
    inoremap  jj  j

    " 清空搜索
    nnoremap  <silent> <leader>/  <esc>:let @/=""<cr>
    if has("ide")  " ideavim
        " :s匹配后清除模式寄存器无效, (同时<silent>不可用), 改为先用/搜索一次
        nnoremap  <leader>/  /<cr>``:let @/=""<cr>
    endif

" ---------- 功能映射 ----------

" ========== 插件映射 ==========

    " NERDTree映射
    nnoremap  <leader>nn  <esc>:NERDTree 
    nnoremap  <leader>nf  <esc>:NERDTreeFind<cr>
    nnoremap  <leader>nt  <esc>:NERDTreeToggle<cr>
    xnoremap  <leader>nn  <esc>:NERDTree 
    xnoremap  <leader>nf  <esc>:NERDTreeFind<cr>
    xnoremap  <leader>nt  <esc>:NERDTreeToggle<cr>
    onoremap  <leader>nn  <esc>:NERDTree 
    onoremap  <leader>nf  <esc>:NERDTreeFind<cr>
    onoremap  <leader>nt  <esc>:NERDTreeToggle<cr>
    
    " easymotion映射
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

    " fzf 映射搜索
    command! Nmaps call fzf#vim#maps('n', 0)
    command! Imaps call fzf#vim#maps('i', 0)
    command! Cmaps call fzf#vim#maps('c', 0)
    command! Vmaps call fzf#vim#maps('v', 0)
    command! Xmaps call fzf#vim#maps('x', 0)
    command! Smaps call fzf#vim#maps('s', 0)
    command! Omaps call fzf#vim#maps('o', 0)
    command! Tmaps call fzf#vim#maps('t', 0)
    command! Lmaps call fzf#vim#maps('l', 0)

    " multi-cursors
    let g:multi_cursor_use_default_mapping = 0
    let g:multi_cursor_start_word_key      = '<A-n>'
    let g:multi_cursor_select_all_word_key = '<Nop>'
    let g:multi_cursor_start_key           = 'g<A-n>'
    let g:multi_cursor_select_all_key      = '<Nop>'
    let g:multi_cursor_next_key            = '<A-n>'
    let g:multi_cursor_prev_key            = '<A-p>'
    let g:multi_cursor_skip_key            = '<A-x>'
    let g:multi_cursor_quit_key            = '<Esc>'

" ---------- 插件映射 ----------
