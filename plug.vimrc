call plug#begin('$VIM/vimfiles/plugged')
Plug 'yianwillis/vimcdoc'        " 中文文档
Plug 'morhetz/gruvbox'           " 主题色
Plug 'tpope/vim-surround'        " 括号
Plug 'preservim/nerdtree'        " 文件树
Plug 'easymotion/vim-easymotion' " 快速移动光标
Plug 'tpope/vim-commentary'      " 代码注释
Plug 'mg979/vim-visual-multi'    " 多光标
Plug 'tommcdo/vim-exchange'      " 交换文本
" Plug 'terryma/vim-multiple-cursors'
call plug#end()

let g:EasyMotion_smartcase = 1
