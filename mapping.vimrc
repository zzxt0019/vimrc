" leader映射 "
let g:mapleader="'"
" 取消当前leader键的原始功能 "
noremap '  <nop>
noremap '' <nop>

" MIT 推荐 - 禁用方向键 "
nnoremap <left>  <nop>
nnoremap <right> <nop>
nnoremap <up>    <nop>
nnoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>
inoremap <up>    <nop>
inoremap <down>  <nop>

" HL映射行首行尾^$ "
noremap H ^
noremap L $
sunmap  H
sunmap  L

" c s x删除的内容不进入默认缓存 "
noremap c "_c
noremap C "_C
noremap s "_s
noremap S "_S
noremap x "_x
noremap X "_X
sunmap  c
sunmap  C
sunmap  s
sunmap  S
sunmap  x
sunmap  X

" Insert模式 jk 退出 "
inoremap jk <esc>

" 全模式 映射方向键 "
noremap  <c-h> <left>
noremap  <c-j> <down>
noremap  <c-k> <up>
noremap  <c-l> <right>
inoremap <c-h> <left>
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-l> <right>
cnoremap <c-h> <left>
cnoremap <c-j> <down>
cnoremap <c-k> <up>
cnoremap <c-l> <right>
tnoremap <c-h> <left>
tnoremap <c-j> <down>
tnoremap <c-k> <up>
tnoremap <c-l> <right>
lnoremap <c-h> <left>
lnoremap <c-j> <down>
lnoremap <c-k> <up>
lnoremap <c-l> <right>

" 清空搜索 "
noremap <leader>/ <esc>:let @/ = ""<cr>

" NERDTree映射 "
noremap <leader>nn <esc>:NERDTree<cr>
noremap <leader>nf <esc>:NERDTreeFind<cr>
noremap <leader>nt <esc>:NERDTreeToggle<cr>
noremap <leader>nm <esc>:NERDTreeMirror<cr>

" easymotion映射 "
let g:EasyMotion_do_mapping = 0 " 禁用默认映射
map <leader>f <Plug>(easymotion-bd-f)
map <leader>t <Plug>(easymotion-bd-t)


" 临时-映射: 全局替换全角空格为2个半角空格 "
noremap <leader><leader><space><space> <esc>:%s/　/  /g<cr>
