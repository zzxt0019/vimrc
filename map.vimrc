" leader映射 "
let g:mapleader="'"

" MIT 推荐 - 禁用方向键 "
nnoremap <left>  <nop>
nnoremap <right> <nop>
nnoremap <up>    <nop>
nnoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>
inoremap <up>    <nop>
inoremap <down>  <nop>

" 映射: HL ^$ 行首行尾 "
noremap H ^
noremap L $

" 映射: c s x删除的内容不进入默认缓存 "
noremap c "_c
noremap C "_C
noremap s "_s
noremap S "_S
noremap x "_x
noremap X "_X

" 映射: Insert模式 jk 退出 "
inoremap jk <esc>

" 快速移动 "
noremap <c-h> <left>
noremap <c-j> <down>
noremap <c-k> <up>
noremap <c-l> <right>
inoremap <c-h> <left>
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-l> <right>
cnoremap <c-h> <left>
cnoremap <c-j> <down>
cnoremap <c-k> <up>
cnoremap <c-l> <right>

" 清空搜索 "
nnoremap <leader>/ :let @/ = ""<cr>

" NERDTree映射 "
nnoremap <leader>nn :NERDTree<cr>
nnoremap <leader>nf :NERDTreeFind<cr>
nnoremap <leader>nt :NERDTreeToggle<cr>
nnoremap <leader>nm :NERDTreeMirror<cr>

" easymotion映射 "
let g:EasyMotion_do_mapping = 0 " 禁用默认映射
let g:EasyMotion_smartcase = 1 " 忽略大小写
nnoremap <leader>f <Plug>(easymotion-bd-f)
nnoremap <leader>t <Plug>(easymotion-bd-t)


" 临时-映射: 全局替换全角空格为2个半角空格 "
nnoremap <leader><leader><space><space> :%s/　/  /g<cr>
