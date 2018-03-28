:command! Rtags execute system('ripper-tags -R -f .tags')
:command! Ctags execute system('ctags -R -f .tags')
:command! CopyFileName let @+ = expand('%')
:command! CopyFullFileName let @+ = expand('%:p')

:command! Rhtosym :call To19KeysLinewise()
:command! Rhtostr :call ToStringKeysLinewise()
