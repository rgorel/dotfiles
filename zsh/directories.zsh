# Directory navigation.
# Backfills oh-my-zsh lib/directories.zsh: auto-pushd + the d / 1..9 stack shortcuts.

setopt auto_cd             # type a directory name alone to cd into it
setopt auto_pushd          # cd pushes onto the directory stack
setopt pushd_ignore_dups   # do not push the same dir twice
setopt pushd_minus         # swap meaning of +N / -N for pushd

alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'

alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index

alias -- -='cd -'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
