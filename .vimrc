execute pathogen#infect()
filetype plugin indent on

syntax on
colorscheme Tomorrow-Night
set number

set ruler
set cursorline

set showcmd

set shell=bash
set backspace=indent,eol,start

set history=200
set scrolloff=3
set hidden
set autoread

set runtimepath^=~/.vim/bundle/ctrlp.vim

" Whitespace
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set list

" Indicator chars
set listchars=tab:▸\ ,trail:•,extends:❯,precedes:❮
set showbreak=↪\ 

set hlsearch
set incsearch
set ignorecase
set smartcase

" Timeout
set notimeout
set ttimeout
set ttimeoutlen=100

" clear the search buffer when hitting return
:nnoremap <CR> :nohlsearch<cr>

" quicker window switching
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

let mapleader=","

" Command T
map <leader>gl :CommandT lib<cr>
map <leader>gt :CommandTTag<cr>
map <leader>f :CommandT<cr>
map <leader>F :CommandT %%<cr>

" Toggle between last open buffers
nnoremap <leader><leader> <c-^>

if has("statusline") && !&cp
  set laststatus=2                   " always show the status bar
  set statusline=%<%1*\ %f\ %*       " filename
  set statusline+=%2*%m%r%*          " modified, readonly
  set statusline+=\ %3*%y%*          " filetype
  set statusline+=\ %4*%{fugitive#head()}%0*
  set statusline+=%=                 " left-right separation point
  set statusline+=\ %5*%l%*/%L[%p%%] " current line/total lines
  set statusline+=\ %5*%v%*[0x%B]    " current column [hex char]
endif

hi StatusLine term=inverse,bold cterm=NONE ctermbg=24 ctermfg=189
hi StatusLineNC term=inverse,bold cterm=NONE ctermbg=24 ctermfg=153
hi User1 term=inverse,bold cterm=NONE ctermbg=29 ctermfg=159
hi User2 term=inverse,bold cterm=NONE ctermbg=29 ctermfg=16
hi User3 term=inverse,bold cterm=NONE ctermbg=24
hi User4 term=inverse,bold cterm=NONE ctermbg=24 ctermfg=221
hi User5 term=inverse,bold cterm=NONE ctermbg=24 ctermfg=209
