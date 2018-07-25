" keyword mapping
let mapleader=","
map! <c-l> <right>
map <leader><leader>n :NERDTreeToggle<cr>
map <leader><leader>t :LeaderfFunction!<cr>
map <C-h> <C-W>h
map <C-l> <C-W>l
" map <C-j> <C-W>j
" map <C-k> <C-W>k

noremap <c-a> I
noremap <c-e> A
noremap ; :
noremap <leader>w :w<cr>
noremap <leader>q :q!<cr>
noremap <leader>e :wq<cr>
noremap <leader>c A:<cr>
noremap <leader>n o
noremap <leader><space> :nohlsearch<cr>
noremap <leader>f :LeaderfFile<cr>
autocmd FileType python noremap <leader><leader>d :Pydocstring<cr>
noremap H ^
noremap L $
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>
nmap  <leader><leader>w <Plug>(easymotion-bd-w)
nmap  <leader><leader>s <Plug>(easymotion-bd-jk)


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

if has('nvim')
  " terminal mode mapping
  tnoremap <Esc> <C-\><C-n>
  tnoremap <c-j> <C-\><C-n>
endif

" 输入快捷方式
iabbrev hw Hello World
iabbrev im import
iabbrev fm from
iabbrev fn function
cabbrev tn tabnew
