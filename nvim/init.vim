set path=.,**
set shiftwidth=4
set tabstop=8
set relativenumber number
set autoindent
set expandtab
set smartindent
let mapleader="g"

noremap y$ Y
noremap   <silent> <Leader>n <C-^>
nnoremap <Leader>v :vert sbN<CR>
noremap <silent> <Leader>l :noh<CR>
lang en_US.UTF-8


nnoremap n h
onoremap n h
xnoremap n h

nnoremap e j
onoremap e j
xnoremap e j

nnoremap i k
onoremap i k
xnoremap i k

nnoremap o l
onoremap o l
xnoremap o l

nnoremap l o
nnoremap L O
nnoremap E J
nnoremap h i
nnoremap H I
nnoremap I <nop>

nnoremap k n
nnoremap K N
nnoremap N H
nnoremap O L

filetype plugin on
filetype plugin indent on

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'tpope/vim-fugitive'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'numToStr/Comment.nvim'
Plug 'simrat39/rust-tools.nvim'
Plug 'TimUntersberger/neogit'
Plug 'onsails/lspkind.nvim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'EdenEast/nightfox.nvim'
Plug 'sindrets/diffview.nvim'
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'mxsdev/nvim-dap-vscode-js'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'mfussenegger/nvim-lint'
Plug 'scalameta/nvim-metals'
Plug 'romgrk/barbar.nvim'
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
call plug#end()

source ~/.config/nvim/plugins/lsp.vim
source ~/.config/nvim/plugins/nvim-compe.vim
source ~/.config/nvim/plugins/telescope.vim
source ~/.config/nvim/plugins/nvim-treesitter.vim
source ~/.config/nvim/plugins/vim-prettier.vim
source ~/.config/nvim/plugins/Comment.vim
source ~/.config/nvim/plugins/rust-all.vim
source ~/.config/nvim/plugins/nvimtree.vim
source ~/.config/nvim/plugins/neogit.vim
source ~/.config/nvim/plugins/tokyonight.vim
source ~/.config/nvim/plugins/nightfox.vim
source ~/.config/nvim/plugins/lualine.vim
source ~/.config/nvim/plugins/diffview.vim
source ~/.config/nvim/plugins/go-lsp.vim
source ~/.config/nvim/plugins/dap.lua
source ~/.config/nvim/plugins/nvim-lint.vim
source ~/.config/nvim/plugins/scalameta.vim

colorscheme duskfox
hi ColorColumn ctermbg=4
set completeopt=menu,menuone,noselect
set cursorline cursorlineopt=number
