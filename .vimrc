call plug#begin('~/.vim/plugged')
" 下面的我安装的插件
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Valloric/YouCompleteMe'
Plug 'bling/vim-airline'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'w0rp/ale' "异步的语法检查工具 比syntastic好多了
Plug 'google/yapf' " python的格式化
Plug 'ntpeters/vim-better-whitespace' "空白标红
Plug 'dracula/vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'iamcco/mathjax-support-for-mkdp', {'for': 'markdown'}
Plug 'iamcco/markdown-preview.vim', {'for': 'markdown'}
Plug 'lilydjwg/fcitx.vim'
Plug 'Chiel92/vim-autoformat'

call plug#end()
"插件末尾
" 当光标一段时间保持不动了，就禁用高亮
autocmd cursorhold * set nohlsearch
" 当输入查找命令时，再启用高亮
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
noremap * *:set hlsearch<cr>
set nocompatible "去除vi 和vim 的一致性
set nu! " 设置行号
filetype on " 开启类型检查
syntax on " 开启语法高粱
set autoindent "自动缩进
set cindent	"C语言的缩进格式
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
set rtp+=~/.vim/bundle/Vundle.vim "启用vundle管理vim插件的功能
set t_md= "禁用粗体
set t_Co=256 "开启256色
set cursorline "高亮显示当前行
"set cursorcolumn "高亮光标列
set fileformat=unix "filetype
set encoding=utf-8 "编码utf-8
colorscheme space-vim-dark
let python_highlight_all=1 "make code 漂亮
au BufRead,BufNewFile *.vue set filetype=html "vue高亮
autocmd FileType python set colorcolumn=79
set gcr=a:block-blinkon0 "禁止光标闪烁
hi Normal guibg=NONE ctermbg=NONE
set cmdheight=1
"set noswapfile "禁止生产交换文件

"插件相关配置
"---------------------------vim-autoformater---------------------------
let g:formatdef_harttle = '"astyle --style=attach --pad-oper"'
let g:formatters_cpp = ['harttle']
let g:formatter_yapf_style = 'google'
noremap <F1> :Autoformat<CR>
"---------------------------vim-autoformater---------------------------



"--------------------------vim-instant-markdown--------------------------
let g:instant_markdown_autostart = 0 "关闭chrome自动打开
"使用 :InstantMarkdionPreview 打开chrome预览
" ---------------------------vim-markdown----------------------------------
let g:vim_markdown_folding_disabled = 1 "禁用折叠
let g:vim_markdown_conceal = 0 "禁用语法隐藏
" ---------------------------vim-markdown----------------------------------



"------------------------------ale------------------------------------------
let g:ale_linters = {'python': ['flake8'], 'reStructuredText': ['rstcheck']}
let g:ale_fixers = {'python': ['remove_trailing_lines', 'trim_whitespace', 'autopep8']}
nmap <silent> <C-k> <Plug>(ceale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:ale_sign_error = '😠'
let g:ale_sign_warning = '😡'
"highlight ALEErrorSign ctermbg=NONE ctermfg=NONE
"highlight ALEWarningSign ctermbg=NONE ctermfg=NONE
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_cache_executable_check_failures = 1
"------------------------------ale------------------------------------------

"---------------yapf----------------------------------------------------
autocmd FileType python nnoremap <F3> :0,$!yapf<Cr>
" 建议每天最晚时刻使用格式化代码
" 因为他每次都会跳到第一行
"---------------yapf----------------------------------------------------

"--------------------------------------------------------------------------
"vim-airline

"这个是安装字体后 必须设置此项"
let g:airline_powerline_fonts = 1

 "打开tabline功能,方便查看Buffer和切换,省去了minibufexpl插件
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#tabline#buffer_nr_show = 1

"设置切换Buffer快捷键"
 nnoremap <C-tab> :bn<CR>
 nnoremap <C-s-tab> :bp<CR>
 " 关闭状态显示空白符号计数
 let g:airline#extensions#whitespace#enabled = 0
 let g:airline#extensions#whitespace#symbol = '!'
 " 设置consolas字体"前面已经设置过
 "set guifont=Consolas\ for\ Powerline\ FixedD:h11
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"------------------------------air-line--------------------------------------



"-------------------------------YouCompleteMe----------------------------------------
" 全局路径配置
let g:ycm_server_keep_logfiles = 1
let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_seed_identifiers_with_syntax=1 "语言关键字补全, 不过python关键字都很短，所以，需要的自己打开
set completeopt=longest,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
" 跳转到定义处
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <F6> :YcmForceCompileAndDiagnostics<CR>	"force recomile with syntastic
" nnoremap <leader>lo :lopen<CR>	"open locationlist
" nnoremap <leader>lc :lclose<CR>	"close locationlist
inoremap <leader><leader> <C-x><C-o>
let g:ycm_cache_omnifunc=0
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
map <C-]> :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 跳转
let g:ycm_show_diagnostics_ui = 0 "close syntax checked
""---------------------------YouCompleteMe-----------------------------------------------


filetype plugin indent on
"Vundle Section End
if !has('gui_running')
  set t_Co=256
  if has('termguicolors')
    set termguicolors
  end
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  set timeoutlen=1000 ttimeoutlen=0
endif


" ----------------NERDTree setting-----------------------------------
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" 是否显示隐藏文件
let NERDTreeShowHidden=1
" 设置宽度
let NERDTreeWinSize=28
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" 按下 F2 调出/隐藏 NERDTree
 map <F2> :NERDTreeToggle<CR>
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
 "----------------------NERDTree setting---------------------------------



 "----------------------indentLine---------------------------------------
 "缩进指示线"
let g:indentLine_char='┆'
let g:indentLine_enabled = 1
let g:indentLine_fileTypeExclude = ['json'] "indentLine 不在json文件中加载, 目的是显示双引号
"------------------------indentLine---------------------------------------


" 配置vim打开时vim自动定位到上次的位置
if has("autocmd")
    autocmd BufRead *.txt set tw=78
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal g'\"" |
    \ endif
endif
" 配置vim打开时vim自动定位到上次的位置


" ------------------------禁用斜体--------------------------------------------
function! ZF_Setting_DisableItalic()
    let his = ''
    redir => his
    silent highlight
    redir END
    let his = substitute(his, '\n\s\+', ' ', 'g')
    for line in split(his, "\n")
        if line !~ ' links to ' && line !~ ' cleared$'
            execute 'hi' substitute(substitute(line, ' xxx ', ' ', ''), 'italic', 'none', 'g')
        endif
    endfor
endfunction
augroup ZF_setting_disable_italic
    call ZF_Setting_DisableItalic()
    autocmd!

    autocmd FileType,BufNewFile,BufReadPost * call ZF_Setting_DisableItalic()
augroup END
" ------------------------禁用斜体--------------------------------------------
" -----------------normal 使用相对行号 insert 使用绝对行号-------------------
augroup relative_numbser
    autocmd!
    autocmd InsertEnter * :set norelativenumber
    autocmd InsertLeave * :set relativenumber
augroup END
" -----------------normal 使用相对行号 insert 使用绝对行号-------------------
