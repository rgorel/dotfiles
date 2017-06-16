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

if has('unnamedplus')
  set clipboard=unnamedplus
else
  set clipboard=unnamed
endif

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
hi Visual ctermbg=58
"set cursorline
set wildmenu
set laststatus=2
set timeoutlen=1000 ttimeoutlen=0
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪
set hidden
set updatetime=250

set splitbelow
set splitright

" Speed up vim
set ttyfast
set lazyredraw
set synmaxcol=150
set timeoutlen=1000
set ttimeoutlen=0
set regexpengine=1

set tags=.tags,tags,.git/tags


" plugins settings
source ~/.vim/plugins.vim

let g:hl_matchit_hl_groupname = 'MatchParen'
let g:hl_matchit_enable_on_vim_startup = 1

"let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline#extensions#tagbar#enabled = 0

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level=1
let g:indent_guides_guide_size=2
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  ctermbg=234 ctermfg=238
hi IndentGuidesEven ctermbg=237 ctermfg=232

let g:tagbar_sort=0

let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_auto_select = 0
let g:neocomplete#disable_auto_complete = 1

let g:neosnippet#snippets_directory = $VIMHOME . "/snippets"

let g:startify_list_order = ['dir', 'files', 'bookmarks', 'sessions', 'commands']
let g:startify_change_to_dir = 0


if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

source ~/.vim/keys.vim
source ~/.vim/commands.vim
runtime macros/matchit.vim
