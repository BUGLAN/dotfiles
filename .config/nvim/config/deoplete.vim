" deoplete-vim
" deoplete-vim 使用tab键
set completeopt -=preview
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
let g:deoplete#max_menu_length = 2
let g:deoplete#enable_smart_case = 1
let g:deoplete#auto_complete_start_length = 2
" let g:deoplete#max_list = 15
let g:deoplete#enable_at_startup = 0 "开启deplete
" complete with one brackets
" call deoplete#custom#source('_', 'converters', ['converter_auto_paren'])
" let g:deoplete#enable_at_startup = 1


" neopairs
" let g:neopairs#enable = 1
" enable neopairs make deoplete complete with one pair brackets"


" deoplete-jedi
" pip install jedi
let g:deoplete#sources#jedi#python_path = '/home/neo/miniconda3/bin/python'
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
call deoplete#custom#source('TernJS',        'mark', '⌁')
call deoplete#custom#source('go',            'mark', '⌁')
call deoplete#custom#source('ultisnips',     'mark', '⌘')
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


" deoplete-go
let g:deoplete#sources#go#gocode_binary = '/home/lan/go/bin/gocode'


" deug
" call deoplete#custom#source('jedi', 'debug_enabled', 1)
" call deoplete#enable_logging('DEBUG', '/tmp/deoplete.log')
