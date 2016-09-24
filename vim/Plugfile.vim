call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'ntpeters/vim-better-whitespace'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-endwise'
Plug 'vimtaku/hl_matchit.vim'
Plug 'derekwyatt/vim-scala'
Plug 'tpope/vim-vinegar'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'fishbullet/deoplete-ruby'
endif

call plug#end()
