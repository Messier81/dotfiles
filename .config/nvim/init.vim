call plug#begin()
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'preservim/nerdtree'
call plug#end()

" map leader to space
let mapleader = " "

" use ;; for escape
inoremap ;; <Esc>

" source init.vim
nnoremap <leader>sv :source $MYVIMRC<CR>


" fzf quick commands
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>g :GFiles<CR>
nnoremap <leader>f :Files<CR>

"NERDTree quick commands

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
