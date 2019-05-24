set nocompatible

if has('syntax')
  syntax enable
endif

autocmd BufNewFile,BufRead *.eye   set syntax=ruby
" go to last cursor position when switching to buffer
au BufLeave * let b:winview = winsaveview()
au BufEnter * if(exists('b:winview')) | call winrestview(b:winview) | endif

set autoindent
filetype plugin indent on
set backspace=indent,eol,start
set complete-=i
set smarttab
set mouse=a
set completeopt=menu,menuone,preview,longest
set smartcase
set ignorecase
au InsertEnter * set noignorecase
au InsertLeave * set ignorecase

set swapfile
set dir^=$VIMHOME/tmp//

if has('unnamedplus')
  set clipboard=unnamedplus
else
  set clipboard=unnamed
endif

set incsearch
set showmatch
set hlsearch
set exrc

set tabstop=2
set shiftwidth=2
set expandtab
set relativenumber
set number
"colorscheme Tomorrow-Night-Eighties
"hi CursorLineNr   term=bold ctermfg=11 gui=bold guifg=Yellow
hi Visual ctermbg=58
"set cursorline
:autocmd InsertEnter * set cursorline
:autocmd InsertLeave * set nocursorline

set wildmenu
set laststatus=2
set timeoutlen=1000 ttimeoutlen=0
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪
set hidden
set updatetime=250
set nowrap
set linebreak

set splitbelow
set splitright

" Speed up vim
set ttyfast
set lazyredraw
"set synmaxcol=150
set timeoutlen=1000
set ttimeoutlen=0
set regexpengine=1
set ruler

set foldmethod=indent
set nofoldenable

set tags=.tags,tags,.git/tags


" plugins settings
source ~/.vim/plugins.vim
set background=dark
set noballooneval

"let g:fzf_launcher = 'xterm -e sh -ic %s'
let g:fzf_colors = { 'bg':      ['bg', 'Normal'], 'prompt':      ['fg', 'Conditional']}
"let g:fzf_colors =
"\ { 'fg':      ['fg', 'Normal'],
"  \ 'bg':      ['bg', 'Normal'],
"  \ 'hl':      ['fg', 'Comment'],
"  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"  \ 'hl+':     ['fg', 'Statement'],
"  \ 'info':    ['fg', 'PreProc'],
"  \ 'border':  ['fg', 'Ignore'],
"  \ 'prompt':  ['fg', 'Conditional'],
"  \ 'pointer': ['fg', 'Exception'],
"  \ 'marker':  ['fg', 'Keyword'],
"  \ 'spinner': ['fg', 'Label'],
"  \ 'header':  ['fg', 'Comment'] }

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
"  let g:ctrlp_user_command = 'ag %s -l -i -U --nocolor --nogroup --hidden
"    \ --ignore="bin/"
"    \ --ignore="*.gif"
"    \ --ignore="*.png"
"    \ --ignore="*.jpg"
"    \ --ignore="*.jpeg"
"    \ --ignore="vendor/bundle"
"    \ --ignore="tmp/"
"    \ --ignore="coverage/"
"    \ --ignore=".git/"
"    \ --ignore="._gems/"
"    \ --ignore="._bundle/"
"    \ --ignore=".DS_Store/"
"    \ -g ""'
"
"  " ag is fast enough that CtrlP doesn't need to cache
"  let g:ctrlp_use_caching = 0
endif

let g:seoul256_background = 236
colorscheme seoul256
highlight ExtraWhitespace ctermbg=red

let g:hl_matchit_hl_groupname = 'MatchParen'
let g:hl_matchit_enable_on_vim_startup = 1

let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1

let g:SuperTabLongestEnhanced = 1
let g:SuperTabLongestHighlight = 1
let g:neosnippet#snippets_directory = $VIMHOME . "/snippets"

let g:startify_list_order = ['dir', 'files', 'bookmarks', 'sessions', 'commands']
let g:startify_change_to_dir = 0

let g:indent_guides_enable_on_vim_startup = 1

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

source ~/.vim/keys.vim
source ~/.vim/commands.vim
runtime macros/matchit.vim
