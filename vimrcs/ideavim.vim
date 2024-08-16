" IdeaVim额外的配置
" ========== ideavim额外的set配置 结束 ==========
"
" set ideacopypreprocess
" set ideaglobalmode
set ideajoin
" set ideamarks
" set idearefactormode=
" set ideastatusicon=
" set ideawrite=
" set lookupkeys=
set trackactionids
" set visualdelay=
" ---------- ideavim额外的set配置 结束 ----------

" ========== 自定义映射Action 开始 ========== 
"
" 映射Action启用<space>作为前缀
map <space> <nop>
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
" 全局搜索 shift-shift
map <space>s <Action>(SearchEverywhere)
" 方法跳转到子类实现
map <c-n> <Action>(GotoImplementation)
" 方法跳转到父类定义
map <c-m> <Action>(GotoSuperMethod)
" ---------- 自定义映射Action 结束 ----------


" ========== 自定义命令Action 开始 ==========
"
" Reload 重新加载ideavimrc
command! Reload call IdeaVimAction('IdeaVim.ReloadVimRc.reload')
" Run
command! Run call IdeaVimAction('Run')
" RunClass
command! RunClass call IdeaVimAction('RunClass')
" Debug
command! Debug call IdeaVimAction('Debug')
" Stop
command! Stop call IdeaVimAction('Stop')
" ActivateTerminalToolWindow 打开终端
command! Terminal call IdeaVimAction('ActivateTerminalToolWindow')
" MavenReload 重新加载maven
command! MavenReload call IdeaVimAction('Maven.Reimport Maven.UpdateFolders')
command! Git call IdeaVimAction('Git.Menu')
" Vim 关闭ideavim
command! Vim call IdeaVimAction('VimPluginToggle')
" ---------- 自定义命令Action 结束 ----------

" ========== Function ========== 
" 执行IdeaVimAction 多个命令根据<space>切分
function! IdeaVimAction(actions)
    let l:actions = split(a:actions, ' ') 
    for action in l:actions
        execute 'action '.l:action
    endfor
endfunction
" ---------- Function ----------
