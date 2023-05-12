" leader映射 "
let g:mapleader=";"


" MIT 推荐 - 禁用方向键 "
nnoremap <Left>  <Nop>
nnoremap <Right> <Nop>
nnoremap <Up>    <Nop>
nnoremap <Down>  <Nop>
inoremap <Left>  <Nop>
inoremap <Right> <Nop>
inoremap <Up>    <Nop>
inoremap <Down>  <Nop>


" 映射: NERDTree 快捷键 "
nnoremap <leader>nn :NERDTree<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>nm :NERDTreeMirror<CR>


" 映射: 移动窗口 "
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

" 映射: HL ^$ 行首行尾 "
noremap H ^
noremap L $
