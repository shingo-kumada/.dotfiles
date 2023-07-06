" command uses zsh
set shell=/bin/zsh
" indent
set shiftwidth=4
" tab
set tabstop=4
" space when entering tab
set expandtab
" no word wrapping
set textwidth=0
" auto indent :set paste cancel
set autoindent
" Search highlights
set hlsearch
" Registration to Clipboard
set clipboard=unnamed
" Syntax on
syntax on

" ------------------------ vim Plug --------------------------

call plug#begin()
Plug 'ntk148v/vim-horizon'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

" if you don't set this option, this color might not correct
set termguicolors

colorscheme horizon
" lightline
let g:lightline = {}
let g:lightline.colorscheme = 'horizon'

" or this line
let g:lightline = {'colorscheme' : 'horizon'}