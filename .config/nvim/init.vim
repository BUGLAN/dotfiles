call plug#begin('~/.config/nvim/plugged')

Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-jedi', {'for': 'python'}
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'}
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'w0rp/ale'
Plug 'ntpeters/vim-better-whitespace'
Plug 'iamcco/markdown-preview.vim', {'for': 'markdown'}
Plug 'Chiel92/vim-autoformat', {'on': 'Autoformat'}
Plug 'sgur/vim-lazygutter'
Plug 'SirVer/ultisnips'
Plug 'fisadev/vim-isort', {'on': 'Isort'}
Plug 'Yggdroot/LeaderF', {'on': ['LeaderfFile', 'LeaderfFunction']}
Plug 'BUGLAN/eleline.vim'
Plug 'liuchengxu/space-vim-dark'
Plug 'scrooloose/nerdcommenter', {'on': '<plug>NERDCommenterToggle'}
Plug 'heavenshell/vim-pydocstring', {'for': 'python', 'on': 'Pydocstring'}
Plug 'godlygeek/tabular', {'for': 'markdown', 'on': 'TableFormat'}
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'easymotion/vim-easymotion', {'on': ['<Plug>(easymotion-bd-w)', '<Plug>(easymotion-bd-jk)']}
" Plug 'mhinz/vim-startify'
Plug 'tpope/vim-surround'
Plug 'luochen1990/rainbow'
Plug 'posva/vim-vue', {'for': 'vue'}
Plug 'carlitux/deoplete-ternjs'
Plug 'junegunn/fzf.vim', {'on': ['Files', 'Ag']}
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'BUGLAN/vim-youdao-translater'
" Plug 'sillybun/vim-repl', {'for': 'python'}
Plug 'junegunn/vim-easy-align', {'on': '<Plug>(EasyAlign)'}
Plug 'junegunn/fzf.vim'
" Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
" fcitx.vim

call plug#end()

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


" vim leader key mapping
source ~/.config/nvim/config/mapping.vim

" vim basic setting
source ~/.config/nvim/config/setting.vim

" deoplete setting
source ~/.config/nvim/config/deoplete.vim

" autocmd config
source ~/.config/nvim/config/autocmd.vim

" plugins setting


" dein
" let g:dein#install_max_processes = 16

" vim-gitgutter / vim-lazygutter
let g:gitgutter_map_keys = 0 "关闭所有键位映射


" vim-autoformat
" pip install yapf, autopep8
" sudo pacman -S astyle
" let g:formatterpath = ['/usr/bin/python']
let g:formatdef_harttle = '"astyle --style=attach --pad-oper"'
let g:formatters_cpp = ['harttle']
let g:formatter_yapf_style = 'pep8'
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
" let g:startify_enable_unsafe = 1

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
" function! StartifyEntryFormat()
    " return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
" endfunction



" vim youdao translater
vnoremap <silent> <C-T> :<C-u>Ydv<CR>
nnoremap <silent> t :<C-u>Ydc<CR>
noremap <leader>d :<C-u>Yde<CR>


" vim easy text align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)


" vim-polyglot
let g:polyglot_disabled = ['markdown']
augroup plug_xtype
    autocmd FileType * if expand('<amatch>') != 'markdown' | call plug#load('vim-polyglot') | execute 'autocmd! plug_xtype' | endif
augroup END

set shortmess=I
