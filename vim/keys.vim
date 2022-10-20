" Leader
nmap <space> \
vmap <space> \

map <Leader>[ :bp<CR>
map <Leader>] :bn<CR>
nmap <Leader>w :set wrap!<CR>
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

nmap <Leader>n :set relativenumber! relativenumber?<CR>

nmap <Leader>p :norm p=`]<CR>
nmap <Leader>P :norm P=`]<CR>

map <Leader>c :CopyFileName<CR>
map <Leader>C :CopyFullFileName<CR>

" woo! dangerous stuff!
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

map <Leader>b :Tagbar<CR>

" FZF
map <C-P> :FZF<CR>
map <Leader>\ :Buffers<CR>
map <Leader><space> :Buffers<CR>
map <C-C> :Commands<CR>
map <C-\> :History<CR>
map <Leader>t :Tags<CR>
map <Leader>r :BTags<CR>
map <Leader>m :Marks<CR>
map <Leader>; :History:<CR>
map <Leader>l :BLines<CR>
map <leader>j :call fzf#vim#tags("'".expand('<cword>'))<cr>

" Ctrl P
"map <Leader>\ :CtrlPBuffer<CR>
"map <C-\> :CtrlPMRU<CR>
"map <Leader>t :CtrlPTag<CR>
"map <Leader>r :CtrlPBufTag<CR>
"map <Leader>s :CtrlPSession<CR>

" deoplete
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : deoplete#manual_complete()
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
"  return pumvisible() ? deoplete#close_popup() : "\<CR>"
"endfunction

" neosnippet
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" NERDTree
map <Leader>d :NERDTreeToggle<CR>
map <Leader>g :NERDTreeFind<CR>
map <Leader>f :NERDTreeFocus<CR>
let NERDTreeMapHelp = '<Leader>?'

" tmux runner
map <Leader>e :call SendToTmux('bundle exec rspec ' . expand('%') . "\n")<CR>
nmap <C-c>r <Plug>SetTmuxVars

" ack
nmap <Leader>a :Rg
vmap <Leader>a "ay:Rg <C-r>=fnameescape(@a)<CR>
nmap <Leader>A :Rg <C-r>=expand('<cword>')<CR>
