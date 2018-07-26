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
    call dein#add('iamcco/mathjax-support-for-mkdp', {'on_ft': 'markdown', 'on_event': 'InsertEnter'})
    call dein#add('iamcco/markdown-preview.vim', {'on_ft': 'markdown', 'on_cmd': 'MarkdownPreview'})
    " call dein#add('lilydjwg/fcitx.vim', {'on_event': 'InsertEnter'})
    call dein#add('Chiel92/vim-autoformat', {'on_cmd': 'Autoformat'})
    call dein#add('sgur/vim-lazygutter', {'on_event': 'InsertEnter'})
    call dein#add('SirVer/ultisnips', {'on_event': 'InsertEnter'})
    call dein#add('fisadev/vim-isort', {'on_cmd': 'Isort'})
    call dein#add('Yggdroot/LeaderF', {'on_cmd': ['LeaderfFile', 'LeaderfFunction']})
    call dein#add('liuchengxu/eleline.vim')
    call dein#add('liuchengxu/space-vim-dark')
    " call dein#add('Shougo/neopairs.vim', {'on_event': 'InsertEnter'})
    call dein#add('scrooloose/nerdcommenter', {'on_map': '<plug>NERDCommenterToggle'})
    call dein#add('heavenshell/vim-pydocstring', {'on_ft': 'python', 'on_cmd': 'Pydocstring'})
    call dein#add('godlygeek/tabular', {'on_ft': 'markdown'})
    call dein#add('plasticboy/vim-markdown', {'on_ft': 'markdown'})
    call dein#add('easymotion/vim-easymotion', {'on_map': ['<Plug>(easymotion-bd-w)', '<Plug>(easymotion-bd-jk)']})
    call dein#add('mhinz/vim-startify', {'on_event': 'VimEnter'})
    call dein#add('tpope/vim-surround')
    call dein#add('luochen1990/rainbow')
    call dein#add('posva/vim-vue', {'on_ft': 'vue'})
    call dein#add('carlitux/deoplete-ternjs')
    " call dein#add('maksimr/vim-jsbeautify')
    " call dein#add('mattn/emmet-vim')
    call dein#add('pangloss/vim-javascript')
    call dein#add('marijnh/tern_for_vim')
    " call dein#add('mileszs/ack.vim')
    call dein#add('junegunn/fzf.vim')


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
source ~/.config/nvim/config/mapping.vim


" vim basic setting
source ~/.config/nvim/config/setting.vim


" 配置vim打开时vim自动定位到上次的位置
if has("autocmd")
    autocmd BufRead *.txt set tw=78
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line ("'\"") <= line("$") |
                \   exe "normal g'\"" |
                \ endif
endif


" plugins setting


" dein
let g:dein#install_max_processes = 16

" vim-gitgutter / vim-lazygutter
let g:gitgutter_map_keys = 0 "关闭所有键位映射


" vim-autoformater
" pip install yapf
" sudo pacman -S astyle
let g:formatdef_harttle = '"astyle --style=attach --pad-oper"'
let g:formatters_cpp = ['harttle']
let g:formatter_yapf_style = 'google'
let g:formatters_python= ['yapf']
noremap <leader>a :Autoformat<CR>


" markdown preview
let g:mkdp_auto_close = 0


" ale
" npm install -g eslint bable-eslint
" pip install flake8 autopep8
" {
"    "extends": "standard",
"    "parser": "babel-eslint"
" }

let g:ale_linters = {
            \ 'python': ['flake8'],
            \ 'reStructuredText': ['rstcheck']
            \ }

let g:ale_fixers = {'python': ['remove_trailing_lines', 'trim_whitespace', 'autopep8']}
nmap <silent> <C-k> <Plug>(ceale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '✘'
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
" pip install isort
let g:vim_isort_map = ''
let g:vim_isort_python_version = 'python3'


" tagbar
let g:tagbar_width = 30
let g:tagbar_ctags_bin = 'ctags'
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
" call deoplete#custom#source('_', 'converters', ['converter_auto_paren'])
" let g:deoplete#enable_at_startup = 1


" neopairs
" let g:neopairs#enable = 1
" enable neopairs make deoplete complete with one pair brackets"


" deoplete-jedi
" pip install jedi
let g:deoplete#sources#jedi#python_path = '/home/lan/anaconda3/bin/python3.6'
let g:deoplete#sources#jedi#enable_cache = 10 " 缓存
let g:deoplete#enable_refresh_always = 1
let g:deoplete#enable_camel_case = 1
let g:deoplete#max_abbr_width = 35
let g:deoplete#max_menu_width = 20
let g:deoplete#skip_chars = ['(', ')', '<', '>']
let g:deoplete#tag#cache_limit_size = 800000
let g:deoplete#file#enable_buffer_path = 1

let g:deoplete#sources#jedi#statement_length = 50
" let g:deoplete#sources#jedi#show_docstring = 1
" let g:deoplete#sources#jedi#short_types = 1
let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
let g:deoplete#omni_patterns = get(g:, 'deoplete#omni_patterns', {})
let g:deoplete#sources = get(g:,'deoplete#sources',{})
" let g:deoplete#omni#input_patterns.python = ''
" let g:deoplete#enable_ignore_case = 'ignorecase'
let g:deoplete#enable_ignore_case = 1
let g:deoplete#ignore_sources = {}
" let g:deoplete#ignore_sources._ = ['buffer']


call deoplete#custom#source('_', 'converters', [
            \ 'converter_remove_paren',
            \ 'converter_remove_overlap',
            \ 'converter_truncate_abbr',
            \ 'converter_truncate_menu',
            \ 'converter_auto_delimiter'
            \ ])

" \ 'converter_auto_paren',

call deoplete#custom#source('file',          'mark', 'ℬ')
" call deoplete#custom#source('TernJS',        'mark', '⌁')
" call deoplete#custom#source('go',            'mark', '⌁')
" call deoplete#custom#source('ultisnips',     'mark', '⌘')
call deoplete#custom#source('tmux-complete', 'mark', '⊶')
call deoplete#custom#source('omni',          'mark', '⌾')
call deoplete#custom#source('flow',          'mark', '⌁')
call deoplete#custom#source('padawan',       'mark', '⌁')
" call deoplete#custom#source('jedi',          'mark', '⌁')
call deoplete#custom#source('vim',           'mark', '⌁')
call deoplete#custom#source('tag',           'mark', '⌦')
call deoplete#custom#source('around',        'mark', '↻')
call deoplete#custom#source('buffer',        'mark', 'ℬ')
call deoplete#custom#source('syntax',        'mark', '♯')
call deoplete#custom#source('member',        'mark', '.')


" call deoplete#custom#source('padawan',       'rank', 660)
" call deoplete#custom#source('go',            'rank', 650)
" call deoplete#custom#source('vim',           'rank', 640)
" call deoplete#custom#source('flow',          'rank', 630)
" call deoplete#custom#source('TernJS',        'rank', 620)
call deoplete#custom#source('ultisnips',     'rank', 620)
call deoplete#custom#source('jedi',          'rank', 610)
call deoplete#custom#source('omni',          'rank', 600)
call deoplete#custom#source('member',        'rank', 500)
call deoplete#custom#source('file_include',  'rank', 420)
call deoplete#custom#source('file',          'rank', 410)
call deoplete#custom#source('tag',           'rank', 400)
call deoplete#custom#source('around',        'rank', 330)
call deoplete#custom#source('buffer',        'rank', 320)
call deoplete#custom#source('dictionary',    'rank', 310)
call deoplete#custom#source('tmux-complete', 'rank', 300)
call deoplete#custom#source('syntax',        'rank', 200)


" deoplete-clang
" sudo pacman -S clang
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
let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git','.hg', 'anaconda3', 'Download', 'node_modules', '.*', 'venv', 'migrations'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[cod]']
            \}


" vim-pydocstring
nmap <silent> <C-_> <Plug>(pydocstring)

" vim-startify
let g:startify_enable_unsafe = 1

" rainbow
let g:rainbow_active = 1
let g:rainbow_conf = {
            \   'guifgs': ['darkorange3', 'firebrick', 'seagreen3', 'royalblue3'],
            \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
            \   'operators': '_,_',
            \}

" nerdtree
let g:NERDTreeIgnore = ['\.pyc$', '^__pycache__$', '\.git$', '^migrations$', 'node_modules']


" deoplete-ternjs
" npm install -g ternjs
" Set bin if you have many instalations
let g:deoplete#sources#ternjs#tern_bin = '/usr/bin/tern'
let g:deoplete#sources#ternjs#timeout = 1
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#depths = 1
let g:deoplete#sources#ternjs#docs = 1
let g:deoplete#sources#ternjs#filter = 0
let g:deoplete#sources#ternjs#case_insensitive = 1
let g:deoplete#sources#ternjs#sort = 0
let g:deoplete#sources#ternjs#expand_word_forward = 0
let g:deoplete#sources#ternjs#omit_object_prototype = 0
let g:deoplete#sources#ternjs#include_keywords = 1
let g:deoplete#sources#ternjs#in_literal = 0
let g:deoplete#sources#ternjs#filetypes = [
            \ 'jsx',
            \ 'javascript.jsx',
            \ 'vue',
            \ ]

" vim jsbeautify
" map <c-f> :call JsBeautify()<cr>
" autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>


" Ack.vim
" let g:ackprg = 'ag --nogroup --nocolor --column'

" fzf.vim
" sudo pacman -S the_silver_searcher fzf
nnoremap <silent> <C-p> :Files<CR>
" leader s[earch] code snippets
nnoremap <leader>s :Ag<cr>
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, '--color-path="0;33"', <bang>0)
