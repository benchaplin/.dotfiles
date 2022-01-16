syntax on

set hidden
set noerrorbells
set relativenumber
set tabstop=4 softtabstop=4 shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set splitright
set guicursor=i:block

set colorcolumn=100
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()

let mapleader = " "

inoremap kj <c-c>

nnoremap <leader>w :w<cr>
nnoremap <leader>q :q!<cr>

nnoremap <leader>v <c-w>v<cr>
nnoremap <leader>l <c-w>l<cr>
nnoremap <leader>h <c-w>h<cr>
nnoremap <leader>k <c-w>k<cr>
nnoremap <leader>j <c-w>j<cr>

nnoremap <leader>rs= :vertical resize +10<cr>
nnoremap <leader>rs- :vertical resize -10<cr>
nnoremap <leader>rs4 :vertical resize 40<cr>
nnoremap <leader>rsh :vertical resize 110<cr>
nnoremap <leader>hrs= :resize +5<cr>
nnoremap <leader>hrs- :resize -5<cr>

nnoremap <leader>e :Ex<cr>
nnoremap <leader>pv <c-w>v<bar><c-w>h<bar>:Ex<bar>:vertical resize 40<cr>

nnoremap <leader>o o<esc>
nnoremap <leader><s-o> <s-o><esc>

nnoremap <leader>mdp :MarkdownPreview<cr>
