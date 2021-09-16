set number
set relativenumber
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set nohlsearch
set incsearch
" set hidden
set noerrorbells
set nowrap
set noswapfile
set scrolloff=8
set completeopt=menuone,noinsert,noselect
set termguicolors
set signcolumn=yes
set colorcolumn=85

inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

call plug#begin('~/.vim/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'preservim/nerdtree'
Plug 'davidhalter/jedi-vim'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'tmhedberg/SimpylFold'

let g:deoplete#enable_at_startup = 1

call plug#end()

colorscheme gruvbox
let mapleader = " "

" NERDTree maps
nnoremap <leader>nf :NERDTreeFocus<cr>
nnoremap <leader>nn :NERDTree<cr>
nnoremap <leader>nt :NERDTreeToggle<cr>
nnoremap <leader>ns :NERDTreeFind<cr>

" Tab switching
nnoremap <leader>tt :tabnew<Enter>
nnoremap <leader>tn gt
nnoremap <leader>tl gT

" Vim style window switching
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope file_browser<cr>
nnoremap <leader>fu <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

