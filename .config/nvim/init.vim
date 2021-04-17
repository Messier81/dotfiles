call plug#begin()
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'preservim/nerdtree'
  Plug 'kaicataldo/material.vim', { 'branch': 'main' }
  Plug 'kchmck/vim-coffee-script'
  Plug 'itchyny/lightline.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" map leader to space
let mapleader = " "
set number

colorscheme material
let g:lightline = { 'colorscheme': 'material_vim' }

" source init.vim
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>ev :e $MYVIMRC<CR>

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" use jj for escape
inoremap jj <Esc>

" fzf quick commands
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>g :GFiles<CR>
nnoremap <leader>f :Files<CR>

"NERDTree quick commands

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Spaces & Tabs
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line

set cursorcolumn
set cursorline
