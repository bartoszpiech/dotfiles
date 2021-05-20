" NVIM - Bartosz Piech
set nocompatible
syntax enable
set background=dark
"colorscheme solarized
filetype plugin on
set path+=**
set wildmenu
set number relativenumber

colorscheme peachpuff 
let base16colorspace = 256

" Tabs
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set cindent

set ruler
set colorcolumn=80
"set showmatch

"netrw settings
let mapleader = " "
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 25
let g:netrw_altv = 1
let g:netrw_alto = 1

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>q :wincmd q<CR>
nnoremap <leader>v :wincmd v<CR>
nnoremap <leader>s :wincmd s<CR>
nnoremap <leader>p :wincmd v<bar> :Ex <bar> :vertical resize 25<CR>
nnoremap <silent> <Leader>= :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

nnoremap <leader>t :wincmd v<bar> :wincmd l <bar>:term<CR>

tnoremap <Esc> <C-\><C-n>
tnoremap <C-v><Esc> <Esc>
set visualbell

"set whitespace rendering
set listchars+=space:·,trail:·
set list
