if g:vim_plug_path == ""
    call plug#begin()
else
    call plug#begin(g:vim_plug_path)
endif
" 中文文档
Plug 'yianwillis/vimcdoc'

" 主题色
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'

" IdeaVim支持的插件
Plug 'easymotion/vim-easymotion'        " 快速跳转 [motions]
" Plug 'justinmk/vim-sneak'
Plug 'preservim/nerdtree'               " 文件树
Plug 'tpope/vim-surround'               " 环绕操作 [operator] (y/c/d)s
Plug 'terryma/vim-multiple-cursors'     " 多光标
Plug 'tpope/vim-commentary'             " 注释操作 [operator] gc
Plug 'vim-scripts/ReplaceWithRegister'  " 替换操作 [operator] gr
Plug 'vim-scripts/argtextobj.vim'       " 参数文本对象 [text-objects] (i/a)a
Plug 'tommcdo/vim-exchange'             " 互换操作 [operator] cx
Plug 'kana/vim-textobj-entire'          " 全文文本对象 [text-objects] (i/a)e
Plug 'machakann/vim-highlightedyank'    " 复制高亮
Plug 'dbakker/vim-paragraph-motion'     " 大括号增强 (只含有空格的行)
Plug 'michaeljsmith/vim-indent-object'  " 缩进文本对象 [text-objects] ii当前 ai包含上一行 aI包含上下
Plug 'chrisbra/matchit'                 " 百分号增强 (自定义匹配内容, IdeaVim中默认可匹配 HTML标签/if-else 等)
" Plug 'unblevable/quick-scope'           " 高亮每个单词中唯一的字符
" Plug 'liuchengxu/vim-which-key'         " 实时显示组合键

" 其他插件
Plug 'ZSaberLv0/vim-easymotion-chs'     " easymotion中文扩展
Plug 'tpope/vim-repeat'                 " tpope的点扩展
Plug 'kana/vim-textobj-user'            " 自定义文本对象 (vim-textobj-entire前置插件)
Plug 'vim-airline/vim-airline'          " 状态栏
Plug 'vim-airline/vim-airline-themes'   " 状态栏主题
Plug 'junegunn/fzf',{'do':{->fzf#install()}}
Plug 'junegunn/fzf.vim'                 " fzf
Plug 'mhinz/vim-startify'               " 启动页面
call plug#end()
