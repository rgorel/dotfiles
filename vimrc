set nocompatible

if has('syntax')
  syntax enable
endif

set autoindent
set backspace=indent,eol,start
set complete-=i
set smarttab

set incsearch
set showmatch
set hlsearch
set ignorecase

set tabstop=2
set shiftwidth=2
set expandtab
set number
colorscheme Tomorrow-Night-Eighties
hi CursorLineNr   term=bold ctermfg=11 gui=bold guifg=Yellow
set cursorline
set wildmenu
set laststatus=2
set timeoutlen=1000 ttimeoutlen=0
set list
set list listchars=tab:»\ ,trail:⋅,extends:>

source ~/.vim/Plugfile.vim
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
