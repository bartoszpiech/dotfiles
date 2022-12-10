" NVIM - Bartosz Piech

" Tabs
" old
" set tabstop=4 softtabstop=4
" set shiftwidth=4
" set expandtab
" set smartindent
" new
set tabstop=4 softtabstop=4
set tabstop=4
set shiftwidth=4
set noexpandtab
set smartindent

" Others
set exrc
set guicursor=
set number relativenumber 
set nohlsearch
set hidden
set noerrorbells
"set nowrap chujowe
set smartcase
set noswapfile
set nobackup
set undodir=~/.local/cache/nvim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set colorcolumn=80
set updatetime=50
set shortmess+=c
set list
set listchars=tab:>\ ,eol:¬,nbsp:␣,trail:·
filetype plugin on
set path+=**
set wildmenu

let mapleader=" "

call plug#begin('~/.local/share/nvim/plugged')
Plug 'gruvbox-community/gruvbox',
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}, " not working rn
" Plug 'wannesm/wmnusmv.vim'  " nusmv coloring
" Plug 'evanleck/vim-svelte',  " svelte
" Plug 'mcchrish/nnn.vim',
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }  " go plugin
call plug#end()


let g:mkdp_browser = '/usr/bin/qutebrowser'
"let g:mkdp_auto_start = 1
"let g:mkdp_browser = 'firefox'
"let $NVIM_MKDP_LOG_FILE = expand('~/mkdp-log.log')
"let $NVIM_MKDP_LOG_LEVEL = 'debug'


colorscheme gruvbox
highlight Normal guibg=none

" Netrw
"let g:netrw_banner=0
"let g:netrw_liststyle=3
let g:netrw_altv=1
let g:netrw_alto=1
let g:netrw_keepdir=0
let g:netrw_winsize=30
let g:netrw_localcopydircmd = 'cp -r'
"hi! link netrwMarkFile Search

" Window movement
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>q :wincmd q<CR>
nnoremap <leader>v :wincmd v<CR>
nnoremap <leader>s :wincmd s<CR>
nnoremap <silent> <Leader>= :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

" Terminal in nvim
nnoremap <leader>t :wincmd v<bar> :wincmd l <bar>:term<CR>
tnoremap <Esc> <C-\><C-n>
tnoremap <C-v><Esc> <Esc>
