" call plug#begin('~/.config/nvim/plugged')
" " 下面的我安装的插件
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'Yggdroot/indentLine', {'for': ['c', 'cpp', 'python']}
" Plug 'jiangmiao/auto-pairs'
" Plug 'w0rp/ale', {'for': ['c', 'cpp', 'python']}
" Plug 'ntpeters/vim-better-whitespace'
" Plug 'godlygeek/tabular', {'for': 'markdown'}
" Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
" Plug 'iamcco/mathjax-support-for-mkdp', {'for': 'markdown'}
" Plug 'iamcco/markdown-preview.vim', {'for': 'markdown'}
" Plug 'lilydjwg/fcitx.vim', {'on': []}
" Plug 'Chiel92/vim-autoformat', {'on': 'Autoformat'}
" Plug 'airblade/vim-gitgutter', {'on': []}
" Plug 'SirVer/ultisnips'
" Plug 'scrooloose/nerdcommenter', {'on': '<plug>NERDCommenterToggle'}
" Plug 'fisadev/vim-isort', {'on': 'Isort'}
" Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'}
" Plug 'zchee/deoplete-jedi', {'for': 'python'}
" " Plug 'zchee/deoplete-clang', {'for': ['c', 'cpp']}
" Plug 'Yggdroot/LeaderF', { 'do': './install.sh', 'on': 'LeaderfFile'}
" Plug 'liuchengxu/eleline.vim'
" Plug 'liuchengxu/space-vim-dark'
" Plug 'Shougo/neopairs.vim', {'for': ['c', 'cpp', 'python']}
" if has('nvim')
    " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
    " Plug 'Shougo/deoplete.nvim'
    " Plug 'roxma/nvim-yarp'
    " Plug 'roxma/vim-hug-neovim-rpc'
" endif

" call plug#end()
" " 插件末尾
set runtimepath+=/home/lan/.config/nvim/dein/repos/github.com/Shougo/dein.vim " path to dein.vim
call dein#begin(expand('/home/lan/.config/nvim/dein'))

if dein#load_state('/home/lan/.config/nvim/dein')
  call dein#add('/home/lan/.config/nvim/dein')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('zchee/deoplete-jedi', {'on_ft': 'python'})
  call dein#add('scrooloose/nerdtree', {'on_cmd': 'NERDTreeToggle'})
  call dein#add('Yggdroot/indentLine', {'on_ft': ['c', 'python', 'cpp']})
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('w0rp/ale', {'on_event': 'InsertEnter'})
  call dein#add('ntpeters/vim-better-whitespace', {'on_event': 'InsertEnter'})
  call dein#add('godlygeek/tabular', {'on_ft': 'markdown'})
  call dein#add('plasticboy/vim-markdown', {'on_ft': 'markdown'})
  call dein#add('iamcco/mathjax-support-for-mkdp', {'on_ft': 'markdown'})
  call dein#add('iamcco/markdown-preview.vim', {'on_ft': 'markdown'})
  call dein#add('lilydjwg/fcitx.vim', {'on_event': 'InsertEnter'})
  call dein#add('Chiel92/vim-autoformat', {'on_cmd': 'Autoformat'})
  call dein#add('airblade/vim-gitgutter', {'on_event': 'InsertEnter'})
  call dein#add('SirVer/ultisnips', {'on_event': 'InsertEnter'})
  call dein#add('fisadev/vim-isort', {'on_cmd': 'Isort'})
  call dein#add('majutsushi/tagbar', {'on_cmd': 'TagbarToggle'})
  call dein#add('Yggdroot/LeaderF', {'on_cmd': 'LeaderfFile'})
  call dein#add('liuchengxu/eleline.vim')
  call dein#add('liuchengxu/space-vim-dark')
  call dein#add('Shougo/neopairs.vim', {'on_event': 'InsertEnter'})
  call dein#add('scrooloose/nerdcommenter', {'on_map': '<plug>NERDCommenterToggle'})

  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

" lazy load deoplete
autocmd InsertEnter * call Init()
let g:lazy_load = 0
function! Init()
  if g:lazy_load == 0
    let g:lazy_load = 1
    call deoplete#enable()
    " call plug#load('vim-gitgutter')
    " let g:GitGutterEnable=1
  endif
endfunction


" lazy load fcitx.vim in markdown
" autocmd InsertEnter *.md call Fcitx()
" let g:fcitx_load = 0
" function! Fcitx()
" if g:fcitx_load == 0
" let g:fcitx_load = 1
" call plug#load('fcitx.vim')
" endif
" endfunction

" vim leader key mapping
let mapleader=","
map! <c-l> <right>
map <leader><leader>n :NERDTreeToggle<cr>
map <leader><leader>t :TagbarToggle<cr>

noremap <c-a> I
noremap <c-e> A
noremap <space> :
noremap <leader>w :w<cr>
noremap <leader>q :q!<cr>
noremap <leader>e :wq<cr>
noremap <leader>c A:<cr>
noremap <leader>n o
noremap <leader><space> :nohlsearch<cr>
noremap <leader>f :LeaderfFile<cr>

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
inoremap <leader>. <Esc>

" vim tables
noremap gn :tabn<CR>
noremap gp :tabp<CR>


" 输入快捷方式
iabbrev hw Hello World
iabbrev im import
iabbrev fm from
cabbrev tn tabnew


" vim basic setting
set termguicolors " true color
set lazyredraw
set nofoldenable "禁用折叠"
" set nocompatible "去除vi 和vim 的一致性
set nu! " 设置行号
filetype plugin indent on " 开启类型检查
syntax on " 开启语法高粱
set autoindent "自动缩进
set cindent "C语言的缩进格式
set smartindent "当遇到右花括号（}），则取消缩进形式
set tabstop=4 "定义tab所等同的空格长度
set expandtab "expandtab，输入一个tab，将被展开成softtabstop值个空格，如果softtabstop=4，那么一个tab就会被替换成4个空格
set shiftwidth=4 "程序中自动缩进所使用的空白长度指示的
set ruler "底部的行号等显示
set novisualbell "去掉输入错误的提示声音
set softtabstop=4 "逢4空格进1制表符
set t_md= "禁用粗体
set t_Co=256 "开启256色
set fileformat=unix "filetype
set encoding=utf-8 "编码utf-8
let python_highlight_all=1 "make code 漂亮
autocmd FileType python set colorcolumn=79
set cmdheight=1
set noswapfile "禁止生产交换文件


" vim color setting
set norelativenumber
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


" 配置vim打开时vim自动定位到上次的位置
if has("autocmd")
    autocmd BufRead *.txt set tw=78
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line ("'\"") <= line("$") |
                \   exe "normal g'\"" |
                \ endif
endif


" plugins setting

" vim-gitgutter
let g:gitgutter_map_keys = 0 "关闭所有键位映射


" vim-autoformater
let g:formatdef_harttle = '"astyle --style=attach --pad-oper"'
let g:formatters_cpp = ['harttle']
let g:formatter_yapf_style = 'google'
noremap <leader>a :Autoformat<CR>


" markdown preview
let g:mkdp_auto_close = 0


" ale
let g:ale_linters = {'python': ['flake8'], 'reStructuredText': ['rstcheck']}
let g:ale_fixers = {'python': ['remove_trailing_lines', 'trim_whitespace', 'autopep8']}
nmap <silent> <C-k> <Plug>(ceale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '✗'
highlight ALEErrorSign ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
highlight ALEWarningSign ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_cache_executable_check_failures = 1
let g:ale_set_highlights = 0 "ban ale's error and warning highlights
highlight ALEErrorSign ctermbg=NONE ctermfg=red guibg=NONE guifg=#e0211d
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow guibg=NONE guifg=yellow
highlight ALEWarningLine ctermbg=NONE ctermfg=yellow guibg=NONE guifg=yellow
highlight ALEErrorLine ctermbg=NONE ctermfg=red guibg=NONE guifg=#e0211d
highlight ALEInfoLine ctermbg=NONE ctermfg=black guibg=NONE guifg=#e18254


" yapf
autocmd FileType python nnoremap <F3> :0,$!yapf<Cr>
" 建议每天最晚时刻使用格式化代码
" 因为他每次都会跳到第一行


" vim status line
set laststatus=2


" NERDTree setting
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
let NERDTreeShowHidden=1 " 是否显示隐藏文件
let NERDTreeWinSize=30 " 设置宽度
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" 按下 F2 调出/隐藏 NERDTree
map <F2> :NERDTreeToggle<CR>
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif


" indentLine
let g:indentLine_char='┆'
let g:indentLine_enabled = 1
let g:indentLine_fileTypeExclude = ['json'] "indentLine 不在json文件中加载, 目的是显示双引号



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

" deoplete-vim
" deoplete-vim 使用tab键
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
let g:deoplete#max_menu_length = 2
let g:deoplete#enable_smart_case = 1
let g:deoplete#auto_complete_start_length = 2
let g:deoplete#max_list = 15
let g:deoplete#enable_at_startup = 0 "开启deplete
" complete with one brackets
call deoplete#custom#source('_', 'converters', ['converter_auto_paren'])
" let g:deoplete#enable_at_startup = 1


" neopairs
let g:neopairs#enable = 1 "enable neopairs make deoplete complete with one pair brackets"


" deoplete-jedi
let g:deoplete#sources#jedi#python_path = '/home/lan/anaconda3/bin/python3.6'
let g:deoplete#sources#jedi#enable_cache = 10 " 缓存


" deoplete-clang
" let g:deoplete#sources#clang#libclang_path = "/usr/lib/libclang.so"
" let g:deoplete#sources#clang#clang_header = "/usr/lib/clang/6.0.0/include/"
set completeopt -=preview

" make neovim faster without search python
let g:python3_host_skip_check=1
let g:python3_host_prog = '/home/lan/anaconda3/bin/python3.6'
" let g:python_host_skip_check=1
" let g:python_host_prog = '/usr/bin/python'

" leaderf
let g:Lf_WindowHeight = 0.30
let g:Lf_CursorBlink = 0
