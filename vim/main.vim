set nocompatible

if has('syntax')
  syntax enable
endif

autocmd BufNewFile,BufRead *.eye   set syntax=ruby
au BufRead,BufNewFile *.sbt set filetype=scala
autocmd FileType json syntax match Comment +\/\/.\+$+
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
exec system('mkdir -p /tmp/vim')
set dir^=/tmp/vim//

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

set colorcolumn=120

"colorscheme Tomorrow-Night-Eighties
"hi CursorLineNr   term=bold ctermfg=11 gui=bold guifg=Yellow
hi Visual ctermbg=58
"set cursorline
:autocmd InsertEnter * set cursorline
:autocmd InsertLeave * set nocursorline


set wildmenu
set wildmode=longest:full,full
set laststatus=2
set timeoutlen=1000 ttimeoutlen=0
set list
set listchars=tab:-\|,eol:¬,trail:⋅,extends:❯,precedes:❮
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
set regexpengine=0
set ruler

set foldmethod=indent
set nofoldenable

set tags=.tags,tags,.git/tags

set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P


" plugins settings
source ~/.vim/plugins.vim
let g:seoul256_background = 236
colorscheme seoul256
set background=dark

"let g:fzf_launcher = 'xterm -e sh -ic %s'
let g:fzf_colors = { 'bg':      ['bg', 'Normal'], 'prompt':      ['fg', 'Conditional']}

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ackprg = 'ag --vimgrep'
endif


highlight ExtraWhitespace ctermbg=red guibg=red
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/

let g:hl_matchit_hl_groupname = 'MatchParen'
let g:hl_matchit_enable_on_vim_startup = 1

let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1

let g:SuperTabLongestEnhanced = 1
let g:SuperTabLongestHighlight = 1
let g:neosnippet#snippets_directory = $VIMHOME . "/snippets"

let g:startify_list_order = ['dir', 'files', 'bookmarks', 'sessions', 'commands']
let g:startify_change_to_dir = 0

let g:indent_guides_soft_pattern = ' '
let g:indent_guides_tab_guides = 0
let g:indent_guides_enable_on_vim_startup = 1

let g:togglecursor_default = 'block'
let g:togglecursor_insert = 'line'

let g:user_emmet_leader_key='<C-X>'

set statusline+=%{noscrollbar#statusline(10,'-','\|')}

source ~/.vim/keys.vim
source ~/.vim/commands.vim
runtime macros/matchit.vim
