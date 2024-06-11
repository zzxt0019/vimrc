set lookupkeys=<Tab>,<Down>,<Up>,<Enter>,<Left>,<Right>,<C-Down>,<C-Up>,<PageUp>,<PageDown>,<C-Q>
" set trackactionids


map <space> <nop>|xmap <space> <nop>|omap <space> <nop>
" 重命名 
map <space>r <Action>(RenameElement)
" 引入变量 
map <space>v <Action>(IntroduceVariable)
" 全局查找 
map <space>f <Action>(FindInPath)
" 补全 c-s-enter
map <space><enter> <Action>(EditorCompleteStatement)
" 优化导入 c-a-o
map <space>o <Action>(OptimizeImports)
" 格式化 c-a-l
map <space>l <Action>(ReformatCode)
" 环绕 c-a-t
map <space>t <Action>(SurroundWith)
" 提示 a-enter
map <space>i <Action>(ShowIntentionActions)
" 方法跳转到子类实现
map <c-n> <Action>(GotoImplementation)
" 方法跳转到父类定义
map <c-m> <Action>(GotoSuperMethod)

" idea更好的实现 
map <c-o>    <Action>(Back)
map <c-i>    <Action>(Forward)
map J        <Action>(EditorJoinLines)
map <c-r>    <Action>($Redo)


" 通过命令模式实现一些不常用的功能(必须大写开头)

" :Reload 重新加载ideavimrc
command! Reload call IdeaVimAction('IdeaVim.ReloadVimRc.reload')
" Run
command! Run call IdeaVimAction('Run')
" Debug
command! Debug call IdeaVimAction('Debug')
" :New 新建文件
command! New call IdeaVimAction('NewElement')
" :MavenReload 重新加载maven
command! MavenReload call IdeaVimAction('Maven.Reimport Maven.UpdateFolders')
" :Vim 关闭ideavim
command! Vim call IdeaVimAction('VimPluginToggle')

function! IdeaVimAction(actions)
    let l:actions = split(a:actions, ' ') 
    for action in l:actions
        execute 'action '.l:action
    endfor
endfunction
