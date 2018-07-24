call plug#begin('~/.vim/plugged')
" 下面的我安装的插件
Plug 'Valloric/YouCompleteMe', {'on': []}
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Yggdroot/indentLine', {'for': ['c', 'cpp', 'python']}
Plug 'jiangmiao/auto-pairs'
Plug 'w0rp/ale', {'for': ['c', 'cpp', 'python']}
Plug 'google/yapf', {'for': 'markdown'} " python的格式化
Plug 'ntpeters/vim-better-whitespace' "空白标红
Plug 'godlygeek/tabular', {'for': 'markdown'}
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'iamcco/mathjax-support-for-mkdp', {'for': 'markdown'}
Plug 'iamcco/markdown-preview.vim', {'for': 'markdown'}
Plug 'lilydjwg/fcitx.vim', {'on': []}
Plug 'Chiel92/vim-autoformat', {'for': ['c', 'cpp', 'python']}
Plug 'airblade/vim-gitgutter', {'on': []}
Plug 'SirVer/ultisnips'
Plug 'scrooloose/nerdcommenter'
Plug 'fisadev/vim-isort', {'on': 'Isort'}
Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'}
" Plug 'zchee/deoplete-jedi', {'for': 'python'}
" Plug 'zchee/deoplete-clang', {'for': ['c', 'cpp']}
Plug 'kien/ctrlp.vim', {'for': ['c', 'cpp', 'python']}
Plug 'liuchengxu/eleline.vim'
Plug 'liuchengxu/space-vim-dark'
Plug 'mhinz/vim-startify'
Plug 'posva/vim-vue'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-surround'
Plug 'luochen1990/rainbow'
Plug 'easymotion/vim-easymotion'
Plug 'heavenshell/vim-pydocstring'


call plug#end()
"插件末尾

" lazy load plugins
autocmd! InsertEnter * call Init()
let g:lazy_load = 0
function! Init()
  if g:lazy_load == 0
    let g:lazy_load = 1
    call plug#load('YouCompleteMe')
    call plug#load('vim-gitgutter')
    call plug#load('fcitx.vim')
  endif
endfunction


" key mapping
let mapleader=","
map! <c-l> <right>

noremap <c-a> I
noremap <c-e> A
noremap <SPACE> :
noremap <leader>w :w<cr>
noremap <leader>q :q!<cr>
noremap <leader>e :wq<cr>
noremap <leader>c A:<cr>
noremap <leader>n o
nnoremap <leader><space> :nohlsearch<cr>

inoremap <leader>w <Esc>:w<cr>
inoremap <C-a> <esc>I
inoremap <C-e> <esc>A
inoremap <leader>q <Esc>:wq<cr>
inoremap <leader>e =
inoremap <leader>r -
inoremap <leader>a +
inoremap <leader>u _
inoremap <leader>i ____<Esc>hi
inoremap <leader>n <Esc>o
inoremap <leader>c <Esc>A:<cr>
inoremap <leader>b ()<Esc>i
inoremap <leader>s []<Esc>i
inoremap <leader>t {}<Esc>i
inoremap <leader>m *
inoremap <leader>d <SPACE>-><SPACE>
inoremap <leader>f <Esc>bi"<Esc>ea"
inoremap <leader>p print()<Esc>i
inoremap <leader>j <Esc>f)i

map <leader>. <Esc>


"vim tables
noremap gn :tabn<CR>
noremap gp :tabp<CR>


"输入快捷方式
iabbrev hw Hello World
iabbrev im import
iabbrev fm from
cabbrev tn tabnew

set scrolloff=7
set hlsearch "高亮匹配项
set lazyredraw
set nofoldenable "禁用折叠"
set nocompatible "去除vi 和vim 的一致性
set nu! " 设置行号
filetype on " 开启类型检查
syntax on " 开启语法高粱
set autoindent "自动缩进
set cindent "C语言的缩进格式
set smartindent "当遇到右花括号（}），则取消缩进形式
set tabstop=4 "定义tab所等同的空格长度
set expandtab "expandtab，输入一个tab，将被展开成softtabstop值个空格，如果softtabstop=4，那么一个tab就会被替换成4个空格
set shiftwidth=4 "程序中自动缩进所使用的空白长度指示的
set ai!
"set showmatch "输入成对的括号时，Vim 会帮助你跳转并高亮一下匹配的括号
set ruler "底部的行号等显示
set novisualbell "去掉输入错误的提示声音
set softtabstop=4 "逢4空格进1制表符
"set noexpandtab
set t_md= "禁用粗体
set t_Co=256 "开启256色
"set cursorline "高亮显示当前行
"set cursorcolumn "高亮光标列
set fileformat=unix "filetype
set encoding=utf-8 "编码utf-8
let python_highlight_all=1 "make code 漂亮
autocmd FileType python set colorcolumn=79
" set gcr=a:block-blinkon0 "禁止光标闪烁
set cmdheight=1
set noswapfile "禁止生产交换文件


" vim color setting
set norelativenumber
colorscheme space-vim-dark
hi CursorLineNR cterm=bold
hi lineNr guibg=NONE ctermbg=NONE
hi Normal guibg=NONE ctermbg=NONE
hi SignColumn ctermbg=NONE guibg=NONE
hi Comment guifg=#5C6370 ctermfg=59
hi CursorLineNr guibg=NONE ctermbg=NONE
hi Pmenu guibg=NONE ctermbg=NONE
hi Search cterm=underline ctermfg=red ctermbg=NONE
hi TabLineFill ctermfg=NONE ctermbg=NONE
hi TabLine ctermfg=NONE ctermbg=NONE
hi TabLineSel ctermfg=red ctermbg=NONE


" 配置vim打开时vim自动定位到上次的位置
if has("autocmd")
    autocmd BufRead *.txt set tw=78
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line ("'\"") <= line("$") |
                \   exe "normal g'\"" |
                \ endif
endif
" 配置vim打开时vim自动定位到上次的位置


" 禁用斜体
" function! ZF_Setting_DisableItalic()
    " let his = ''
    " redir => his
    " silent highlight
    " redir END
    " let his = substitute(his, '\n\s\+', ' ', 'g')
    " for line in split(his, "\n")
        " if line !~ ' links to ' && line !~ ' cleared$'
            " execute 'hi' substitute(substitute(line, ' xxx ', ' ', ''), 'italic', 'none', 'g')
        " endif
    " endfor
" endfunction
" augroup ZF_setting_disable_italic
    " call ZF_Setting_DisableItalic()
    " autocmd!

    " autocmd FileType,BufNewFile,BufReadPost * call ZF_Setting_DisableItalic()
" augroup END


" normal 使用相对行号 insert 使用绝对行号
" augroup relative_numbser
"     autocmd!
"     autocmd InsertEnter * :set norelativenumber
"     autocmd InsertLeave * :set relativenumber
" augroup END


" 插件相关配置
" vim-gitgutter
let g:gitgutter_map_keys = 0 "关闭所有键位映射


" vim-autoformater
let g:formatdef_harttle = '"astyle --style=attach --pad-oper"'
let g:formatters_cpp = ['harttle']
let g:formatter_yapf_style = 'google'
noremap <leader>a :Autoformat<CR>


" vim-markdown
let g:instant_markdown_autostart = 0 "关闭chrome自动打开
"使用 :InstantMarkdionPreview 打开chrome预览
let g:vim_markdown_folding_disabled = 1 "禁用折叠
let g:vim_markdown_conceal = 0 "禁用语法隐藏
let g:vim_markdown_no_default_key_mappings = 1


" yapf
autocmd FileType python nnoremap <F3> :0,$!yapf<Cr>
" 建议每天最晚时刻使用格式化代码
" 因为他每次都会跳到第一行


" indentLine
let g:indentLine_char='┆'
let g:indentLine_enabled = 1
let g:indentLine_fileTypeExclude = ['json']
" indentLine 不在json文件中加载, 目的是显示双引号


" ultisnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']


" nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDCreateDefaultMappings = 0
map <leader><leader>z <plug>NERDCommenterToggle


" vim-isort
let g:vim_isort_map = ''
let g:vim_isort_python_version = 'python3'


" tagbar
let g:tagbar_width = 30
nmap <F8> :TagbarToggle<CR>


" ale
source ~/.vim/config/ale-config.vim

" air-line
" source ~/.vim/config/airline-config.vim
set laststatus=2

" YouCompleteMe 相关配置
source ~/.vim/config/ycm-config.vim


" NERDTree setting
source ~/.vim/config/nerdtree-config.vim
