let g:plug_url_format='https://github.com/%s.git'
call plug#begin(g:VimrcPath.'/plugged')
" 中文文档
Plug 'yianwillis/vimcdoc'

" 主题色
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'

" IdeaVim支持的插件
Plug 'easymotion/vim-easymotion'        " 快速移动光标 [motion]
" Plug 'justinmk/vim-sneak'
Plug 'preservim/nerdtree'               " 文件树
Plug 'tpope/vim-surround'               " 括号 [command] (y/c/d)s
Plug 'terryma/vim-multiple-cursors'     " 多光标
Plug 'tpope/vim-commentary'             " 代码注释 [command] gc
Plug 'vim-scripts/ReplaceWithRegister'  " 替换 [command] gr
Plug 'vim-scripts/argtextobj.vim'       " 方法参数 [motion] (i/a)a
Plug 'tommcdo/vim-exchange'             " 交换文本 [command] cx
" Plug 'kana/vim-textobj-entire'
Plug 'machakann/vim-highlightedyank'    " 复制高亮
" Plug 'dbakker/vim-paragraph-motion'
" Plug 'michaeljsmith/vim-indent-object'
Plug 'chrisbra/matchit'
Plug 'unblevable/quick-scope'           " 高亮每个单词中唯一的字符
Plug 'liuchengxu/vim-which-key'|set timeout  " 显示组合键
if has("ide") 
    set which-key
    " 原版要打开timeout, 但idea的which-key要关闭timeout
    set notimeout
endif

" 其他插件
Plug 'ZSaberLv0/vim-easymotion-chs'     " easymotion中文扩展
Plug 'tpope/vim-repeat'                 " tpope command repeat
Plug 'vim-airline/vim-airline'          " 状态栏
Plug 'vim-airline/vim-airline-themes'   " 状态栏主题
Plug 'junegunn/fzf',                    " fzf
     \ { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'                 " fzf
Plug 'mhinz/vim-startify'               " 开启时打开最近文件
Plug 'scrooloose/syntastic'
call plug#end()
