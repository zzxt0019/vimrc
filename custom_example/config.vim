" 自定义参数
" Leader键
let g:mapleader = "'"

" 0: 当前是开发环境(本地)
" 1: 当前是生产环境(服务器 默认has("clipboard")为0)
let g:custom_config_environment = 1

" 0: 其他键盘
" 1: 60键键盘
let g:custom_config_keyboard = 1

" vim-plug存储位置(''会存到默认位置)
let g:custom_config_vim_plug_path = ''
