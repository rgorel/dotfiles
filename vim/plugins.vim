if empty(glob('~/.vim/autoload/plug.vim'))
  silent execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')
"Plug 'slim-template/vim-slim'
"Plug 'ntpeters/vim-better-whitespace' " slows down
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-endwise'
Plug 'derekwyatt/vim-scala'
Plug 'kana/vim-textobj-user'
Plug 'michaeljsmith/vim-indent-object'
" auto tab size/mode
Plug 'tpope/vim-sleuth'
Plug 'scrooloose/nerdtree'
Plug 'jgdavey/tslime.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'tpope/vim-rhubarb' " open files in github
Plug 'mileszs/ack.vim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
"Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'kchmck/vim-coffee-script'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mhinz/vim-startify'
Plug 'junegunn/seoul256.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'junegunn/gv.vim'
"Plug 'jszakmeister/vim-togglecursor' " slows down
Plug 'mattn/emmet-vim'
Plug 'gcavallanti/vim-noscrollbar'
Plug 'tpope/vim-markdown'
Plug 'vim-ruby/vim-ruby'

if has('nvim')
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  "Plug 'scalameta/coc-metals', {'do': 'yarn install --frozen-lockfile'}
else
  Plug 'ervandew/supertab'
endif

"if has('nvim')
"  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"  Plug 'fishbullet/deoplete-ruby'
"else
"  Plug 'Shougo/deoplete.nvim'
"  Plug 'roxma/nvim-yarp'
"  Plug 'roxma/vim-hug-neovim-rpc'
"endif

call plug#end()
