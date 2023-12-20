set number
set relativenumber
set tabstop=4
set autoindent
set shiftwidth=4
set mouse=a
set cc=80
highlight ColorColumn ctermbg=206
set ruler
syntax on

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree' 

Plug 'airblade/vim-rooter'

call plug#end()

let g:rooter_patterns = ['.git', '>projects']

nnoremap <C-n> :NERDTreeToggle<CR>

" Close tab if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Open the existing NERDTree instead of creating a new one
autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif
