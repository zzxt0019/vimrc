" ========== leader键 ===========

    let g:mapleader = "'"
    map <leader><leader> <leader>
    noremap <leader> <nop>

" ---------- leader键 ----------- 

" ========== 方向键映射 ==========

    if g:env_keyboard_60 == 0 && g:env_production == 0
        noremap <c-h>  <left>|inoremap <c-h>  <left>|cnoremap <c-h>  <left>
        noremap <c-j>  <down>|inoremap <c-j>  <down>|cnoremap <c-j>  <down>
        noremap <c-k>    <up>|inoremap <c-k>    <up>|cnoremap <c-k>    <up>
        noremap <c-l> <right>|inoremap <c-l> <right>|cnoremap <c-l> <right>
    endif

" ---------- 方向键映射 -----------

" ========== 基础映射 ==========

    " s和x删除 => 不进入缓存
    noremap  s  "_s
    noremap  S  "_S
    noremap  x  "_x
    noremap  X  "_X

    " 水平移动时保留光标
    xnoremap <  <gv
    xnoremap >  >gv

    " @/为空时n/N搜索 => 不报错
    if !has('ide')  " ideavim不存在这个问题
        noremap  <silent> n  :call CommandN('n')<cr>
        noremap  <silent> N  :call CommandN('N')<cr>
    endif

    function! CommandN(n)
        if @/ != '' && ( a:n == 'n' || a:n == 'N' )
            try
                execute 'norm! '.a:n
            catch
            endtry
        endif
    endfunction
    
" ---------- 基础映射 ----------

" ========== 功能映射 ==========

    " 不常用键映射
    noremap H ^
    noremap L $
    map M %

    " 可视模式直接搜索当前选择内容
    xnoremap  <silent> /  <esc>:call Vsearch('/')<cr>
    xnoremap  <silent> ?  <esc>:call Vsearch('?')<cr>
    function! Vsearch(search)
        let l:temp = @"
        normal! gvy
        let @/ = @"
        let @" = l:temp
        execute 'normal! '.a:search.'<cr>N'
    endfunction

    if g:env_keyboard_60 == 0
        " Insert模式 jk 退出
        inoremap  jk  <esc>
        inoremap  jj  j
    endif

    " 清空搜索
    nnoremap  <silent> <leader>/  <esc>:let @/ = ''<cr>
    if has('ide')  " ideavim
        " ideavim需要额外/<esc>, :s匹配后清除需要手动搜索一次
        nnoremap  <leader>/  <esc>:let @/ = ''<cr>/<esc>
    endif

" ---------- 功能映射 ----------

" ========== 插件映射 ==========

    " NERDTree 映射
    nnoremap  <leader>nn  <esc>:NERDTree 
    nnoremap  <leader>nf  <esc>:NERDTreeFind<cr>
    nnoremap  <leader>nt  <esc>:NERDTreeToggle<cr>
    
    " easymotion 映射
    map  <leader>f  <Plug>(easymotion-bd-f)
    map  <leader>t  <Plug>(easymotion-bd-t)

    " quickscope 禁止操作符等待时高亮
    onoremap f f
    onoremap F F
    onoremap t t
    onoremap T T

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

" ---------- 插件映射 ----------
" ========== 清除选择模式 ==========
    smapclear
" ---------- 清除选择模式 ----------
