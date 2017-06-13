call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'ntpeters/vim-better-whitespace'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-endwise'
"Plug 'vimtaku/hl_matchit.vim'
Plug 'derekwyatt/vim-scala'
Plug 'nathanaelkane/vim-indent-guides'
"Plug 'Yggdroot/indentLine'
Plug 'kana/vim-textobj-user'
Plug 'michaeljsmith/vim-indent-object'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-sleuth'
Plug 'scrooloose/nerdtree'
Plug 'jgdavey/tslime.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'mileszs/ack.vim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'kchmck/vim-coffee-script'
Plug 'joker1007/vim-ruby-heredoc-syntax'
Plug 'shmup/vim-sql-syntax'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'fishbullet/deoplete-ruby'
else
  Plug 'Shougo/neocomplete.vim'
endif

call plug#end()
