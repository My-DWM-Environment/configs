:set number
:set autoindent
:set tabstop=2
:set shiftwidth
:set smarttab
:set softtabstop=2
:set mouse=
:set encoding=UTF-8


call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'ap/vim-css-color'
Plug 'ryanoasis/vim-devicons'

call plug#end()

nnoremap <C-x> :NERDTreeToggle<CR>

