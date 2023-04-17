source $VIMRUNTIME/vimrc_example.vim
"语法高亮
syntax on
"显示行号
set number relativenumber
"显示光标所在位置的行号和列号
set ruler
set wrap                      "自动折行
set shiftwidth=4 tabstop=4 softtabstop=4
set expandtab                  "将tab替换为相应数量空格
set smartindent
set backspace=2
"设置取消备份 禁止临时文件生成
set nobackup noswapfile
"设置匹配模式 类似当输入一个左括号时会匹配相应的那个右括号
set showmatch
set clipboard^=unnamed,unnamedplus
set cursorline     "突出显示当前行
set cursorcolumn   "突出显示当前列
"" set fdm=marker 设置代码折叠
colo desert  "主题色黑色 
if has("gui_running")
  set guifont=Consolas:h10
endif

