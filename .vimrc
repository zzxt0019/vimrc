source $VIMRUNTIME/vimrc_example.vim
source $VIM/plug.vimrc
source $VIM/map.vimrc
" 取消兼容模式
set nocompatible 
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
" 搜索大小写
set ignorecase smartcase 
" 搜索实时展示
set incsearch
" 禁用报警
set noerrorbells novisualbell t_vb=
" 启用鼠标
set mouse+=a
" 不显示默认启动信息
set shortmess+=I
colo molokai

" ====== Windows字体大小 ====== "
if has("windows") && has("gui_running")
  let dpi = str2nr(strpart(matchstr(substitute(
    \system('wmic desktopmonitor get PixelsPerXLogicalInch /value'),
    \'\%x01\|\%x0a\|\%x0a\|\%xff\|\%xfe', '', 'g'),
    \'=.*$'), 1))/10
  if dpi > 10
    let &guifont="Consolas:h".dpi
  endif
  set columns=100 " 设置宽度
endif

" ====== Windows字体大小 ====== "

