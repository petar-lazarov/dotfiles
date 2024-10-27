call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'airblade/vim-gitgutter'

Plug 'dense-analysis/ale'

Plug 'neovim/nvim-lspconfig'

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/vim-vsnip'

" Plug 'rafamadriz/friendly-snippets'
Plug 'vim-test/vim-test'

call plug#end()

set dir=~/dotfiles/nvim/backups
set copyindent
set preserveindent
" set mouse=a
set number
set ignorecase
set hlsearch
set wrapscan
set ruler
set autoindent
set smartindent

set expandtab
set encoding=utf-8
set tabstop=4 shiftwidth=4 softtabstop=4
set nocompatible
set laststatus=2
set foldlevelstart=20
set foldmethod=indent
set wildignore+=*/tmp/*,*/\.git/*,*/temp/*
let mapleader=","
" Hides the buffer instead of closing them allowing to open a new buffer
" without saving
set hidden
" Highlights search matches in realtime
set incsearch
" Set the shell which vim will use instead of sh
set shell=$SHELL

colorscheme desert256

syntax on
filetype on
filetype plugin indent on
autocmd Filetype php setlocal ts=4 sw=4 softtabstop=2 expandtab
autocmd Filetype html setlocal ts=2 sw=2 softtabstop=2 expandtab

" easier movement between buffers
noremap <C-J> :bnext<CR>
noremap <C-K> :bprev<CR>
" clears current search
nmap <silent> ,/ :nohlsearch<CR>
nnoremap <Space> za

" highlight ExtraWhitespace ctermbg=red guibg=red
match ErrorMsg /\s\+$/

" Set background color to black for 81 column and columns after 121
let &colorcolumn="81,121"
hi ColorColumn cterm=none ctermbg=black guibg=black

" fzf
let g:fzf_vim = {}
let g:fzf_preview_window = ['right,50%', 'ctrl-/']
nnoremap <C-p> :GFiles<CR>
nnoremap <C-A-p> :Files<CR>

" friendly snippets enable rails
" let g:vsnip_filetypes.ruby = ['rails']


" ale
" let g:ale_use_neovim_diagnostics_api = 1
" let g:ale_disable_lsp = 1
" let g:ale_set_highlights = 1
" let g:ale_virtualtext_cursor = 0
" let g:ale_linters = { 'ruby': ['rubocop'], 'javascript': ['eslint'],'typescript': ['eslint'] }
" let g:ale_fixers = { 'javascript': ['prettier'],'typescript': ['prettier'] }

" vim-test
nmap <silent> <leader>rt :TestNearest<CR>
nmap <silent> <leader>rT :TestFile<CR>
nmap <silent> <leader>rta :TestSuite<CR>
nmap <silent> <leader>rtl :TestLast<CR>
nmap <silent> <leader>rtg :TestVisit<CR>
