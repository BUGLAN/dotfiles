let g:ale_linters = {'python': ['flake8'], 'reStructuredText': ['rstcheck']}
let g:ale_fixers = {'python': ['remove_trailing_lines', 'trim_whitespace', 'autopep8']}

nmap <silent> <C-k> <Plug>(ceale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_cache_executable_check_failures = 1

let g:ale_set_highlights = 0 "ban ale's error and warning highlights

highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

highlight ALEWarningLine ctermbg=NONE ctermfg=yellow
highlight ALEErrorLine ctermbg=NONE ctermfg=red
highlight ALEInfoLine ctermbg=NONE ctermfg=black


