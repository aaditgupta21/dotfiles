syntax on
filetype on
filetype plugin on
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set rnu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set mouse=a
set ruler
set clipboard=unnamedplus

highlight Comment ctermfg=green

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'tweekmonster/gofmt.vim'
Plug 'mbbill/undotree'
Plug 'sheerun/vim-polyglot'
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'gryf/pylint-vim'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'

call plug#end()

set background=dark

set termguicolors


let g:coc_disable_startup_warning = 1
let g:onedark_termcolors=256


let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ 
  \ ]

au VimLeave * :!clear

autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif 

map <C-f> <Esc><Esc>:Files<CR>

map <C-q> <Esc><Esc>gg=G<CR>
map <C-\> <plug>NERDCommenterToggle
map <C-f> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd FileType javascript set formatprg=prettier\ --stdin
let g:NERDTreeIgnore = ['^node_modules$']
