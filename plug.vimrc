if has("win64") || has("win32")
    let g:plugged='$VIM/vimfiles/plugged'
else
    let g:plugged='$HOME/.vim/plugged'
endif


let g:plug_url_format='https://github.com/%s.git'
call plug#begin(g:plugged)
Plug 'yianwillis/vimcdoc'               " 中文文档
Plug 'altercation/vim-colors-solarized' " 主题色
Plug 'tpope/vim-surround'               " 括号 ys cs ds
Plug 'preservim/nerdtree'               " 文件树
Plug 'easymotion/vim-easymotion'        " 快速移动光标
Plug 'tpope/vim-commentary'             " 代码注释 gc
Plug 'tommcdo/vim-exchange'             " 交换文本 cx
Plug 'machakann/vim-highlightedyank'    " 复制高亮
Plug 'vim-scripts/ReplaceWithRegister'  " 替换 gr
call plug#end()
