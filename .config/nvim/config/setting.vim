" vim setting
set ttyfast
set scrolloff=7            " 滚动的时候有7行多余
set updatetime=100         " update time
set termguicolors          " true color
set lazyredraw             " lazy draw
set nofoldenable           " 禁用折叠"
set nocompatible           " 去除vi 和vim 的一致性
set nu                     " 设置行号
filetype plugin indent on  " 开启类型检查自动缩进
syntax on                  " 开启语法高粱
set autoindent             " 自动缩进
set cindent                " C语言的缩进格式
set smartindent            " 当遇到右花括号（}），则取消缩进形式
set shiftround
set tabstop=4              " 定义tab所等同的空格长度
set expandtab              " expandtab，输入一个tab，将被展开成softtabstop值个空格，如果softtabstop=4，那么一个tab就会被替换成4个空格
set shiftwidth=4           " 程序中自动缩进所使用的空白长度指示的
set ruler                  " 底部的行号等显示
set novisualbell           " 去掉输入错误的提示声音
set softtabstop=4          " 逢4空格进1制表符
set t_md=                  " 禁用粗体
set t_Co=256               " 开启256色
set fileformat=unix        " filetype
set encoding=utf-8         " 编码utf-8
let python_highlight_all=1 " make code 漂亮
set cmdheight=1
set noswapfile             " 禁止生产交换文件
set norelativenumber       " 行号为不是相对模式
set ignorecase             " 忽略大小写
set shortmess=I            " 不显示vim版本信息
set noshowmode             " 不显示--INSERT--
set nrformats=             " 使vim将所有数字当成十进制
set autowrite              " vim 自动保存
set splitbelow             " vim 在底部打开新的窗口
set splitright             " vim在右侧打开新的窗口
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
" set clipboard+=unnamedplus
" sudo pacman -S xclip 支持全局剪切板
" set tags=./tags;/


" vim color setting
colorscheme space-vim-dark
hi CursorLineNR cterm=bold gui=bold
hi lineNr guibg=NONE ctermbg=NONE
hi Normal guibg=NONE ctermbg=NONE
hi SignColumn ctermbg=NONE guibg=NONE
hi Comment guifg=#5C6370 ctermfg=59 gui=NONE
hi CursorLineNr guibg=NONE ctermbg=NONE
hi Pmenu guibg=NONE ctermbg=NONE guifg=#af87d7 guibg=NONE
hi TabLineFill ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE
hi TabLine ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE
hi TabLineSel ctermfg=red ctermbg=NONE guifg=#d75faf guibg=NONE
hi Search cterm=underline ctermfg=red ctermbg=NONE guifg=red guibg=NONE gui=underline
