let g:plug_url_format='https://github.com/%s.git'
call plug#begin(g:VimrcPath.'/plugged')
" 中文文档
Plug 'yianwillis/vimcdoc'

" 主题色
Plug 'altercation/vim-colors-solarized'
Plug 'joshdick/onedark.vim'
Plug 'flazz/vim-colorschemes'
Plug 'chiendo97/intellij.vim'

" IdeaVim支持的插件
Plug 'tpope/vim-surround'               " 括号 [command] (y/c/d)s
Plug 'preservim/nerdtree'               " 文件树
Plug 'easymotion/vim-easymotion'        " 快速移动光标 [motion]
Plug 'tpope/vim-commentary'             " 代码注释 [command] gc
Plug 'tommcdo/vim-exchange'             " 交换文本 [command] cx
Plug 'machakann/vim-highlightedyank'    " 复制高亮
Plug 'vim-scripts/ReplaceWithRegister'  " 替换 [command] gr
Plug 'vim-scripts/argtextobj.vim'       " 方法参数 [motion] (i/a)a

" 其他插件
Plug 'ZSaberLv0/vim-easymotion-chs'     " easymotion中文扩展
Plug 'terryma/vim-multiple-cursors'     " 多光标
Plug 'tpope/vim-repeat'                 " tpope command repeat
Plug 'vim-airline/vim-airline'          " 状态栏
Plug 'junegunn/fzf',                    " fzf
            \ { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'                 " fzf
call plug#end()
