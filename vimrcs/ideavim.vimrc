set lookupkeys=<Tab>,<Down>,<Up>,<Enter>,<Left>,<Right>,<C-Down>,<C-Up>,<PageUp>,<PageDown>,<C-Q>
" set trackactionids


map <space> <nop>|xmap <space> <nop>|omap <space> <nop>
" 重命名 
map <space>r <Action>(RenameElement)
" 引入变量 
map <space>v <Action>(IntroduceVariable)
" 新建 
map <space>n <Action>(NewElement)
" 全局查找 
map <space>f <Action>(FindInPath)
" 整行上下移动
map <space>j <Action>(MoveStatementDown)
map <space>k <Action>(MoveStatementUp)
" 补全 c-s-enter
map <space><enter> <Action>(EditorCompleteStatement)
" 优化导入 c-a-o
map <space>o <Action>(OptimizeImports)
" 格式化 c-a-l
map <space>l <Action>(ReformatCode)
" 环绕 c-a-t
map <space>t <Action>(SurroundWith)

" idea更好的实现 
map <c-o>    <Action>(Back)
map <c-i>    <Action>(Forward)
map J        <Action>(EditorJoinLines)
