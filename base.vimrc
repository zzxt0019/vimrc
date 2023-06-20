" 取消兼容模式
set nocompatible 

" 退格键
set backspace=indent,eol,start

" 语法高亮
syntax on

" 显示行号
set number relativenumber

" 右下角显示光标位置
set ruler

" 显示自动换行
set wrap

" 将tab替换为空格
set expandtab

" 缩进类型
set smartindent

" 设置取消备份 禁止临时文件生成
set nobackup noswapfile noundofile 

" 匹配括号显示
set showmatch

" 系统剪切板
set clipboard^=unnamed,unnamedplus

" 搜索智能大小写
set ignorecase smartcase

" 搜索高亮
set hlsearch

" 搜索动态显示
set incsearch

" 取消提示音
set vb t_vb="|0f"
au GuiEnter * set t_vb=

" 启用鼠标
set mouse+=a

" 不显示默认启动信息
set shortmess+=I

" 右下角显示命令
set showcmd

" 主题色
colo gruvbox
set bg=dark

" ===== Plug配置 ===== "
let g:EasyMotion_smartcase = 1
let g:highlightedyank_highlight_duration = 2000
" ===== Plug配置 ===== "

" ====== Windows字体大小 ====== "
if has("windows") && has("gui_running")
  let dpi = str2nr(strpart(matchstr(substitute(
    \system('wmic desktopmonitor get PixelsPerXLogicalInch /value'),
    \'\%x01\|\%x0a\|\%x0a\|\%xff\|\%xfe', '', 'g'),
    \'=.*$'), 1))/10
  if dpi > 10
    let &guifont="Consolas:h".dpi
  endif
  set columns=120 " 设置宽度
  set lines=30 " 设置高度
endif
" ====== Windows字体大小 ====== "

