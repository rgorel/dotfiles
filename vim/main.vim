set nocompatible

if has('syntax')
  syntax enable
endif

set autoindent
filetype on
filetype plugin on
filetype plugin indent on
set backspace=indent,eol,start
set complete-=i
set smarttab

set swapfile
set dir=/tmp

set clipboard=unnamedplus

set incsearch
set showmatch
set hlsearch
set ignorecase

set tabstop=2
set shiftwidth=2
set expandtab
set relativenumber
set number
colorscheme Tomorrow-Night-Eighties
hi CursorLineNr   term=bold ctermfg=11 gui=bold guifg=Yellow
set cursorline
set wildmenu
set laststatus=2
set timeoutlen=1000 ttimeoutlen=0
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪
set hidden
set t_ut=

set tags=tags,.git/tags,.tags

source ~/.vim/plugins.vim
let g:hl_matchit_hl_groupname = 'MatchParen'
let g:hl_matchit_enable_on_vim_startup = 1
"let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_left_sep=''
let g:airline_right_sep=''
"let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level=1
let g:indent_guides_guide_size=2
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  ctermbg=234 ctermfg=238
hi IndentGuidesEven ctermbg=237 ctermfg=232
let g:tagbar_sort=0

source ~/.vim/keys.vim
source ~/.vim/commands.vim
