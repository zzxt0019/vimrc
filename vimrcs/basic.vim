"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 通用
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 取消兼容模式
set nocompatible

" Sets how many lines of history VIM has to remember
set history=500
set timeoutlen=1500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread
autocmd FocusGained,BufEnter * checktime

" 不显示默认启动信息
set shortmess+=I

if has("clipboard") || has("ide")
    " 系统剪切板
    set clipboard^=unnamed,unnamedplus
    " 启用鼠标
    set mouse+=a
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 用户界面
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 光标上下两侧最少保留的屏幕行数
set scrolloff=5

" 光标左右两侧最少保留的屏幕列数
set nowrap
set sidescrolloff=20
set sidescroll=1


" 命令行补全以增强模式运行
set wildmenu

" 显示光标位置的行号和列号
set ruler

" 显示当前命令
set showcmd

" 显示行号 相对行号
set number relativenumber

" 高亮显示当前行 "
set cursorline

" 退格键设置
set backspace=eol,start,indent

" 搜索智能大小写 高亮 动态显示
set ignorecase smartcase hlsearch incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" 正则表达式引擎
set regexpengine=0

" :substitute 设置默认flag为g
set gdefault

" <c-a>和<c-x> 处理数字格式(二进制, 十六进制, 无符号数)
set nrformats=bin,hex,unsigned

" 取消提示音
set noerrorbells visualbell
autocmd VimEnter * set t_vb=
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 颜色字体
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 语法高亮
syntax enable

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
    colorscheme onedark
catch
endtry
set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set fileformats=unix,dos,mac
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 备份文件
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup nowritebackup noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 文本
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 将tab替换为空格
set expandtab

" Be smart when using tabs ;)
set smarttab

" Linebreak on 500 characters
set linebreak
set textwidth=500

set autoindent smartindent

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2


""""""""""""""""""""""""""""""
" => Plugin
""""""""""""""""""""""""""""""
" NERDTree切换目录时自动切换vim根目录
let NERDTreeChDirMode = 2

" easymotion 智能大小写
let g:EasyMotion_smartcase = 1
" easymotion 禁用默认映射
let g:EasyMotion_do_mapping = 0

" argtextobj ideavim 泛型
let g:argtextobj_pairs = "(:),{:},<:>"

" highlightedyank 显示时间
let g:highlightedyank_highlight_duration = 2000
if has("ide")  " ideavim bug 类型为string
    let g:highlightedyank_highlight_duration = g:highlightedyank_highlight_duration.""
endif

" quickscope 只在f, F, t, T时显示
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" multi-cursors
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_start_word_key      = '<A-n>'
let g:multi_cursor_select_all_word_key = '<Nop>'
let g:multi_cursor_start_key           = 'g<A-n>'
let g:multi_cursor_select_all_key      = '<Nop>'
let g:multi_cursor_next_key            = '<A-n>'
let g:multi_cursor_prev_key            = '<A-p>'
let g:multi_cursor_skip_key            = '<A-x>'
let g:multi_cursor_quit_key            = '<Esc>'

""""""""""""""""""""""""""""""
" => GVim
""""""""""""""""""""""""""""""
if has("gui_running") && (has("win64") || has("win32"))
  " 设置字体大小 "
  let dpi = str2nr(strpart(matchstr(substitute(
    \system('wmic desktopmonitor get PixelsPerXLogicalInch /value'),
    \'\%x01\|\%x0a\|\%x0a\|\%xff\|\%xfe', '', 'g'),
    \'=.*$'), 1))/10
  if dpi > 10
    let &guifont = "Consolas:h".dpi
  endif

  set columns=120 " 设置宽度
  set lines=30 " 设置高度
endif
