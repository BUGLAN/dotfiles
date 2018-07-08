let g:ale_linters = {'python': ['flake8'], 'reStructuredText': ['rstcheck']}
let g:ale_fixers = {'python': ['remove_trailing_lines', 'trim_whitespace', 'autopep8']}
nmap <silent> <C-k> <Plug>(ceale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
highlight ALEErrorSign ctermbg=NONE ctermfg=NONE
highlight ALEWarningSign ctermbg=NONE ctermfg=NONE
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_cache_executable_check_failures = 1
