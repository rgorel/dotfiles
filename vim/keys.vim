map <C-P> :FZF<CR>
map <Leader>\ :Buffers<CR>
map <C-C> :Commands<CR>
map <C-\> :History<CR>
map <Leader>t :Tags<CR>
map <Leader>[ :bp<CR>
map <Leader>] :bn<CR>
map <Leader>b :Tagbar<CR>
map <Leader>r :BTags<CR>
map <Leader>m :Marks<CR>

nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

" woo! dangerous stuff!
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" neocomplete
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" NERDTree
