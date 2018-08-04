set runtimepath+=/home/lan/.config/nvim/dein/repos/github.com/Shougo/dein.vim " path to dein.vim
call dein#begin(expand('/home/lan/.config/nvim/dein'))

if dein#load_state('/home/lan/.config/nvim/dein')
    call dein#add('/home/lan/.config/nvim/dein')
    call dein#add('Shougo/deoplete.nvim')
    call dein#add('zchee/deoplete-jedi', {'on_ft': 'python'})
    call dein#add('scrooloose/nerdtree', {'on_cmd': 'NERDTreeToggle'})
    call dein#add('majutsushi/tagbar', {'on_cmd': 'TagbarToggle'})
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
    call dein#add('BUGLAN/eleline.vim')
    call dein#add('liuchengxu/space-vim-dark')
    " call dein#add('Shougo/neopairs.vim', {'on_event': 'InsertEnter'})
    call dein#add('scrooloose/nerdcommenter', {'on_map': '<plug>NERDCommenterToggle'})
    call dein#add('heavenshell/vim-pydocstring', {'on_ft': 'python', 'on_cmd': 'Pydocstring'})
    call dein#add('godlygeek/tabular', {'on_ft': 'markdown', 'on_event': 'InsertEnter'})
    call dein#add('plasticboy/vim-markdown', {'on_ft': 'markdown', 'on_event': 'InsertEnter'})
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
    call dein#add('ryanoasis/vim-devicons')
    " call dein#add('Valloric/YouCompleteMe')
    call dein#add('sheerun/vim-polyglot')
    " call dein#add('python-mode/python-mode')
    call dein#add('BUGLAN/vim-youdao-translater')


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
        " let g:pymode_init = 1
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

" deoplete setting
source ~/.config/nvim/config/deoplete.vim

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
let g:formatters_python= ['autopep8']
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

" let g:syntastic_python_flask8_post_args="--max-line-length=120"
let g:ale_fixers = {'python': ['remove_trailing_lines', 'trim_whitespace', 'autopep8']}
nmap <silent> <C-p> <Plug>(ceale_previous_wrap)
nmap <silent> <C-n> <Plug>(ale_next_wrap)
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
" autocmd FileType python nnoremap <F3> :0,$!yapf<Cr>
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
" 按下 F1 调出/隐藏 NERDTree
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
map <leader>z <plug>NERDCommenterToggle


" vim-isort
" pip install isort
let g:vim_isort_map = ''
let g:vim_isort_python_version = 'python3'


" tagbar
let g:tagbar_width = 30
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_sort = 0
" let g:tagbar_usearrows = 1
map <F3> :TagbarToggle<CR>
map <leader>t :TagbarToggle<CR>


" make neovim faster without search python
let g:python3_host_skip_check=1
let g:python3_host_prog = '/usr/bin/python'
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
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


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

" vim-devicons
" sudo pacman -S nerd-fonts-complete
" https://github.com/Karmenzind/monaco-nerd-fonts
" autocmd FileType nerdtree setlocal nolist
" let g:WebDevIconsUnicodeDecorateFolderNodes = 1
" let g:DevIconsEnableFoldersOpenClose = 1
" let g:WebDevIconsOS = 'ArchLinux'

" for vim-startify
function! StartifyEntryFormat()
    return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction


" python-mode
" open fuction
" let g:pymode_init = 0
" let g:pymode_doc = 1
" let g:pymode_rope = 1

" let g:pymode_doc_bind = 'K'
" let g:pymode_quickfix_minheight = 3
" let g:pymode_quickfix_maxheight = 10
" let g:pymode_rope_goto_definition_bind = 'gd'
" let g:pymode_rope_lookup_project = 0
" let g:pymode_rope_goto_definition_cmd = 'new'

" disable these fuction
" let g:pymode_run = 0
" let g:pymode_motion = 0
" let g:pymode_breakpoint = 0
" let g:pymode_folding = 0
" let g:pymode_trim_whitespaces = 0
" let g:pymode_options = 0
" let g:pymode_lint = 0
" let g:pymode_debug = 0
" let g:pymode_virtualenv = 0
" let g:pymode_indent = 0
" let g:pymode_syntax = 0
" let g:pymode_syntax_all = 0

" vim youdao translater
vnoremap <silent> <C-T> :<C-u>Ydv<CR>
nnoremap <silent> t :<C-u>Ydc<CR>
noremap <leader>yd :<C-u>Yde<CR>
