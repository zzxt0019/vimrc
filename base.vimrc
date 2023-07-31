" 取消兼容模式
set nocompatible 

" 语法高亮
syntax on

" 显示行号 相对行号
set number relativenumber

" 右下角显示光标位置 显示当前命令
set ruler showcmd

" 显示自动换行
set wrap

" 将tab替换为空格
set expandtab

" 缩进类型
set autoindent smartindent

" 设置取消备份 禁止临时文件生成
set nobackup noswapfile writebackup noundofile 

" 自动读取来自外部的修改
set autoread

" 系统剪切板
set clipboard^=unnamed,unnamedplus

" 搜索智能大小写 高亮 动态显示
set ignorecase smartcase hlsearch incsearch

" 取消提示音
set noeb vb t_vb=

" 不显示默认启动信息
set shortmess+=I

" 退格键
set backspace=indent,eol,start

" 启用鼠标
set mouse+=a

" 主题色
colo solarized
set bg=dark

" ===== Plug配置 ===== "
let g:EasyMotion_smartcase = 1
let g:highlightedyank_highlight_duration = 2000
" ===== Plug配置 ===== "

" ====== GVIM设置 ====== "
if has("gui_running") && (has("win64") || has("win32"))
  " 设置字体大小 "
  let dpi = str2nr(strpart(matchstr(substitute(
    \system('wmic desktopmonitor get PixelsPerXLogicalInch /value'),
    \'\%x01\|\%x0a\|\%x0a\|\%xff\|\%xfe', '', 'g'),
    \'=.*$'), 1))/10
  if dpi > 10
    let &guifont="Consolas:h".dpi
  endif

  set columns=120 " 设置宽度
  set lines=30 " 设置高度
  autocmd GuiEnter * set vb t_vb=
endif
" ====== GVIM设置 ====== "

