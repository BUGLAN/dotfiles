call plug#begin('~/.config/nvim/plugged')

" Plug 'BUGLAN/eleline.vim'
" Plug 'mhinz/vim-startify'
" Plug 'posva/vim-vue', {'for': 'vue'}
" Plug 'sillybun/vim-repl', {'for': 'python'}
" Plug 'tpope/vim-fugitive'
" Plug 'ekalinin/dockerfile.vim', {'for': 'dockerfile'}
" Plug 'tpope/vim-markdown', {'for': 'markdown'}
" Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
" Plug 'sheerun/vim-polyglot' some filetype is too slow so choose to install special syntax plugins
" Plug 'racer-rust/vim-racer'
" Plug 'itchyny/vim-cursorword'
" Plug 'liuchengxu/eleline.vim'
" Plug 'zchee/deoplete-jedi', {'for': 'python', 'branch': 'light'}
" Plug 'autozimu/LanguageClient-neovim', {
" \ 'branch': 'next',
" \ 'do': 'bash install.sh',
" \ }
" Plug 'gerardbm/vim-atomic'
" Plug 'integralist/vim-mypy'

" complete
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-jedi', {'for': 'python'}
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'carlitux/deoplete-ternjs', {'do': 'npm install -g tern'}
Plug 'sebastianmarkow/deoplete-rust'

" find & search & move
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/LeaderF', {'on': ['LeaderfFile', 'LeaderfFunction']}
Plug 'easymotion/vim-easymotion', {'on': ['<Plug>(easymotion-bd-w)', '<Plug>(easymotion-bd-jk)']}

" syntax highlight
Plug 'Glench/Vim-Jinja2-Syntax', {'for': 'html'}
Plug 'liuchengxu/space-vim-dark'
Plug 'vim-python/python-syntax', {'for': 'python'}
Plug 'ekalinin/Dockerfile.vim', {'for': 'dockerfile'}
Plug 'PotatoesMaster/i3-vim-syntax', {'for': 'i3'}
Plug 'posva/vim-vue', {'for': 'vue'}
Plug 'luochen1990/rainbow'
Plug 'godlygeek/tabular', {'for': 'markdown', 'on': []}
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'cespare/vim-toml', {'for': 'toml'}

" unit
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
Plug 'scrooloose/nerdcommenter', {'on': '<plug>NERDCommenterToggle'}
Plug 'heavenshell/vim-pydocstring', {'for': 'python', 'on': 'Pydocstring'}
Plug 'tpope/vim-surround'
Plug 'ryanoasis/vim-devicons'
Plug 'BUGLAN/vim-youdao-translater'
Plug 'junegunn/vim-easy-align', {'on': '<Plug>(EasyAlign)'}
Plug 'tpope/vim-sensible'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' } " go get -u github.com/nsf/gocode
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
Plug 'lilydjwg/fcitx.vim', {'on': []}
Plug 'rhysd/clever-f.vim'
Plug 'honza/vim-snippets'
Plug 'rust-lang/rust.vim', {'for': 'rust'}
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'


call plug#end()

" python-syntax
let g:python_highlight_all = 1


" lazy load deoplete
autocmd InsertEnter * call Init()
let g:lazy_load = 0
function! Init()
    if g:lazy_load == 0
        let g:lazy_load = 1
        call deoplete#enable()
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
let g:gitgutter_map_keys = 0 " 关闭所有键位映射


" vim-autoformat
" pip install yapf, autopep8
" sudo pacman -S astyle
" let g:formatterpath = ['/usr/bin/python']
let g:formatdef_harttle = '"astyle --style=attach --pad-oper"'
let g:formatters_cpp = ['harttle']
let g:formatter_yapf_style = 'pep8'
let g:formatters_python= ['yapf']
let g:formatters_rust=['rustfmt']
noremap <leader>a :Autoformat<CR>


" markdown preview
let g:mkdp_auto_close = 0


" vim-instant-markdown
" sudo npm install instant-markdown-d
" let g:instant_markdown_autostart = 0
" let g:instant_markdown_autostart = 0


" ale
" npm install -g eslint bable-eslint
" pip install flake8 autopep8 mypy
" {
"    "extends": "standard",
"    "parser": "babel-eslint"
" }

let g:ale_linters = {
            \ 'python': ['flake8', 'mypy'],
            \ 'reStructuredText': ['rstcheck'],
            \ 'go': ['go build', 'golint', 'gofmt', 'go vet', 'goimports'],
            \ }

" let g:syntastic_python_flask8_post_args="--max-line-length=120"
let g:ale_python_mypy_options = '--ignore-missing-imports --follow-imports=skip --no-strict-optional'
let g:ale_rust_cargo_use_check = 1
let g:ale_rust_cargo_check_all_targets = 1
let g:ale_fixers = {'python': ['remove_trailing_lines', 'trim_whitespace', 'autopep8'], 'go': ['goimports', 'gofmt']}
nmap <silent> <C-p> <Plug>(ceale_previous_wrap)
nmap <silent> <C-n> <Plug>(ale_next_wrap)
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '✘'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_cache_executable_check_failures = 1
let g:ale_set_highlights = 0 " disable ale's error and warning highlights
highlight ALEErrorSign ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
highlight ALEWarningSign ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
highlight ALEErrorSign ctermbg=NONE ctermfg=red guibg=NONE guifg=#e0211d
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow guibg=NONE guifg=yellow
highlight ALEWarningLine ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
highlight ALEErrorLine ctermbg=NONE ctermfg=red guibg=NONE guifg=#e0211d
highlight ALEInfoLine ctermbg=NONE ctermfg=black guibg=NONE guifg=#e18254


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
let g:NERDTreeIgnore = ['\.pyc$', '^__pycache__$', '\.git$', '^migrations$', 'node_modules', '^.pytest_cache$', '^.mypy_cache$']
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


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
" add those to ~/.ctags
" --langdef=markdown
" --langmap=markdown:.md
" --regex-markdown=/^#{1}[ \t]*([^#]+.*)/. \1/h,headings/
" --regex-markdown=/^#{2}[ \t]*([^#]+.*)/.   \1/h,headings/
" --regex-markdown=/^#{3}[ \t]*([^#]+.*)/.     \1/h,headings/
" --regex-markdown=/^#{4}[ \t]*([^#]+.*)/.       \1/h,headings/
" --regex-markdown=/^#{5}[ \t]*([^#]+.*)/.         \1/h,headings/
" --regex-markdown=/^#{6}[ \t]*([^#]+.*)/.           \1/h,headings/
let g:tagbar_type_markdown = {
            \ 'ctagstype' : 'markdown',
            \ 'kinds' : [
            \ 'h:headings',
            \ ],
            \ 'sort' : 0
            \ }
" support go language
let g:tagbar_type_go = {
            \ 'ctagstype' : 'go',
            \ 'kinds'     : [
            \ 'p:package',
            \ 'i:imports:1',
            \ 'c:constants',
            \ 'v:variables',
            \ 't:types',
            \ 'n:interfaces',
            \ 'w:fields',
            \ 'e:embedded',
            \ 'm:methods',
            \ 'r:constructor',
            \ 'f:functions'
            \ ],
            \ 'sro' : '.',
            \ 'kind2scope' : {
            \ 't' : 'ctype',
            \ 'n' : 'ntype'
            \ },
            \ 'scope2kind' : {
            \ 'ctype' : 't',
            \ 'ntype' : 'n'
            \ },
            \ 'ctagsbin'  : 'gotags',
            \ 'ctagsargs' : '-sort -silent'
            \ }


" make neovim faster without search python
let g:python3_host_skip_check=1
let g:python3_host_prog = '/home/neo/miniconda3/bin/python'
let g:python_host_skip_check=1
let g:python_host_prog = '/usr/bin/python2'

" leaderf
let g:Lf_WindowHeight = 0.30
let g:Lf_CursorBlink = 0
let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git','.hg', 'anaconda3', 'Download', 'node_modules', '.*', 'venv', 'migrations', '__pycache__'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[cod]']
            \}


" vim-pydocstring
nmap <silent> <C-_> <Plug>(pydocstring)
autocmd FileType python noremap <leader>d :Pydocstring<cr>

" vim-startify
" let g:startify_enable_unsafe = 1

" rainbow
let g:rainbow_active = 1
let g:rainbow_conf = {
            \   'guifgs': ['darkorange3', 'firebrick', 'seagreen3', 'royalblue3'],
            \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
            \   'operators': '_,_',
            \}



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
noremap <leader><leader>d :<C-u>Yde<CR>


" vim easy text align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)


" vim-polyglot
" let g:polyglot_disabled = ['markdown']
" augroup plug_xtype
" autocmd FileType * if expand('<amatch>') != 'markdown' | call plug#load('vim-polyglot') | execute 'autocmd! plug_xtype' | endif
" augroup END

" vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_no_default_key_mappings = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_no_extensions_in_markdown = 1


" lightline
let g:lightline = {
            \ 'colorscheme': 'one',
            \ 'component_function': {
            \   'filename': 'LightlineFilename',
            \ }
            \ }


" eleline.vim
let g:airline_powerline_fonts = 1
" let g:eleline_slim = 1


function! LightlineFilename()
    let root = fnamemodify(get(b:, 'git_dir'), ':h')
    let path = expand('%:p')
    if path[:len(root)-1] ==# root
        return path[len(root)+1:]
    endif
    return expand('%')
endfunction


" vim-go
let g:go_template_autocreate = 0
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "gofmt"
let g:go_fmt_autosave = 0
let g:go_version_warning = 0
let g:go_list_type = "quickfix"
let g:go_fmt_fail_silently = 0
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_term_height = 10

autocmd FileType go nnoremap <leader>b  <Plug>(go-build)
" autocmd FileType go nmap <leader>r  <Plug>(go-run-split)
autocmd FileType go nnoremap <leader>r  :exec '!go run' shellescape(@%, 1)<cr>
autocmd FileType go nnoremap <Leader>v <Plug>(go-def-split)
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4


" vim cursorword
" autocmd InsertEnter * let b:cursorword = 0
" autocmd InsertLeave * let b:cursorword = 1


" vim-racer
" let g:racer_cmd = "/home/neo/.cargo/bin/racer"
" let g:racer_experimental_completer = 1
" autocmd FileType rust nmap gd <Plug>(rust-def)
" autocmd FileType rust nmap gs <Plug>(rust-def-split)
" autocmd FileType rust nmap gx <Plug>(rust-def-vertical)
" autocmd FileType rust nmap <leader>gd <Plug>(rust-doc)


" rust.vim
autocmd FileType rust nnoremap <leader>r :!cargo run<cr>
let g:rustfmt_command = "rustfmt"
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0
let g:rust_clip_command = 'xclip -selection clipboard'

" LanguageClient-neovim
" let g:LanguageClient_serverCommands = {
" \ 'rust': ['~/.cargo/bin/rustup', 'run', 'nightly', 'rls'],
" \ }

" nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" " Or map each action separately
" nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
" nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
