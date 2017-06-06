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
Plug 'tpope/vim-vinegar'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Yggdroot/indentLine'
Plug 'kana/vim-textobj-user'
Plug 'michaeljsmith/vim-indent-object'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-sleuth'
"Plug 'ciaranm/detectindent'
Plug 'scrooloose/nerdtree'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'fishbullet/deoplete-ruby'
else
  Plug 'Shougo/neocomplete.vim'
endif

call plug#end()
