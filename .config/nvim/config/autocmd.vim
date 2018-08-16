" 配置vim打开时vim自动定位到上次的位置
if has("autocmd")
    autocmd BufRead *.txt set tw=78
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line ("'\"") <= line("$") |
                \   exe "normal g'\"" |
                \ endif
endif

autocmd FileType python set colorcolumn=80
" set cursorline
" autocmd InsertEnter * set nocursorline
" autocmd InsertLeave * set cursorline
autocmd FileType json,html,jsx,javascript.jsx,vue,markdown setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd TermOpen * set nonu
autocmd FileType python set colorcolumn=80
autocmd FileType python set shiftwidth=4 softtabstop=4 expandtab
autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noet
