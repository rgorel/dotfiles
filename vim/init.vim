let $VIMHOME = $HOME."/.config/nvim"
source $VIMHOME/main.vim
source $VIMHOME/coc.vim

"set list listchars=tab:»\ ,space:⋅,trail:⋅,extends:>

let g:deoplete#enable_at_startup = 1
" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" tern
if exists('g:plugs["tern_for_vim"]')
  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 1
  autocmd FileType javascript setlocal omnifunc=tern#Complete
endif
