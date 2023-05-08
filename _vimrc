source $VIMRUNTIME/vimrc_example.vim
syntax on "语法高亮
set number relativenumber "显示行号
set ruler wrap "显示光标所在位置的行号和列号
"" set shiftwidth=4 tabstop=4 softtabstop=4
set expandtab "将tab替换为相应数量空格
set smartindent
"" set backspace=2
set nobackup noswapfile noundofile "设置取消备份 禁止临时文件生成
set showmatch "设置匹配模式 类似当输入一个左括号时会匹配相应的那个右括号
set clipboard^=unnamed,unnamedplus "系统剪切板
"" set cursorline     "突出显示当前行
"" set cursorcolumn   "突出显示当前列
"" set fdm=marker 设置代码折叠
colo desert  "主题色黑色 
set mouse=c


" ====== Windows字体大小 ====== "
if has("windows") && has("gui_running")
  let dpi = str2nr(strpart(matchstr(substitute(
    \system('wmic desktopmonitor get PixelsPerXLogicalInch /value'),
    \'\%x01\|\%x0a\|\%x0a\|\%xff\|\%xfe', '', 'g'),
    \'=.*$'), 1))/10
  if dpi > 10
    let &guifont="Consolas:h".dpi
  endif
endif

" ====== Windows字体大小 ====== "

call plug#begin()
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
call plug#end()

