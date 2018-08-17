" keyword mapping
let mapleader=","
map <leader>n :NERDTreeToggle<cr>
map <leader><leader>t :LeaderfFunction!<cr>
map  <leader><leader>w <Plug>(easymotion-bd-w)
map  <leader><leader>s <Plug>(easymotion-bd-jk)
map <F1> <nop>
map j gj
map k gk
vnoremap <leader>y "+y
vnoremap <leader>p "+p
" nnoremap <F5> :vsplit $MYVIMRC<cr>
nnoremap <F6> :source $MYVIMRC<cr>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <down> <C-w>-
nnoremap <up> <C-w>+
nnoremap <left> <C-w><
nnoremap <right> <C-w>>

noremap <c-a> I
noremap <c-e> A
noremap ; :
noremap <leader>w :w<cr>
noremap <leader>q :q!<cr>
noremap <leader>e :wq<cr>
autocmd FileType python noremap <leader>c A:<cr>
noremap <leader><space> :nohlsearch<cr>
noremap <leader>f :LeaderfFile<cr>
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
noremap D d$
noremap Y y$
noremap <tab> %

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
autocmd FileType python inoremap <leader>c <Esc>A:<cr>
inoremap <leader>b ()<Esc>i
inoremap <leader>s []<Esc>i
inoremap <leader>t {}<Esc>i
inoremap <leader>m *
inoremap <leader>d <SPACE>-><SPACE>
inoremap <leader>f <Esc>bi"<Esc>ea"
" inoremap <leader>p print()<Esc>i
" inoremap <leader>j <Esc>f)i
" inoremap <leader>. <Esc>
inoremap <c-l> <right>


" 输入快捷方式
iabbrev hw Hello World
" iabbrev fn function
cabbrev tn tabnew
" cabbrev update call dein#update()
cabbrev install PlugInstall
cabbrev fcitx call plug#load('fcitx.vim')
autocmd FileType python iabbrev fm from
autocmd FileType python iabbrev im import

" vim tables
noremap gn :tabn<CR>
noremap gp :tabp<CR>

if has('nvim')
  " terminal mode mapping
  tnoremap <Esc> <C-\><C-n>
  tnoremap <leader>w <C-\><C-n>
  tnoremap <leader>q <C-\><C-n>:q!<cr>
  nnoremap <leader>o :below 10sp term://$SHELL<cr>i
  tnoremap <C-h> <C-\><C-n><C-w>h
  tnoremap <C-j> <C-\><C-n><C-w>j
  tnoremap <C-k> <C-\><C-n><C-w>k
  tnoremap <C-l> <C-\><C-n><C-w>l
  tnoremap gn <C-\><C-n>:tabn<CR>
  tnoremap gp <C-\><C-n>:tabp<CR>
endif
