"全局路径配置
let g:ycm_max_num_candidates = 15
let g:ycm_max_num_identifier_candidates = 8
" let g:ycm_cache_omnifunc=0 "禁止缓存匹配项, 每次重新生成"
let g:ycm_server_keep_logfiles = 1
let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_seed_identifiers_with_syntax=1 "语言关键字补全, 不过python关键字都很短，所以，需要的自己打开
set completeopt=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口
" 跳转到定义GoToDefinition
" 跳转到声明GoToDeclaration
" 以及两者的合体GoToDefinitionElseDeclaration
nnoremap <leader>j :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>k :YcmCompleter GoToDefinition<CR>
nnoremap <leader>l :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <F6> :YcmForceCompileAndDiagnostics<CR>    "force recomile with syntastic
" nnoremap <leader>lo :lopen<CR>    "open locationlist
" nnoremap <leader>lc :lclose<CR>   "close locationlist
inoremap <leader><leader> <C-x><C-o>
let g:ycm_cache_omnifunc=0
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_show_diagnostics_ui = 0 "close syntax checked
