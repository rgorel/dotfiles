export EDITOR=vim

source ~/.oh-my-zsh/custom/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 
source ~/.oh-my-zsh/custom/zsh-history-substring-search/zsh-history-substring-search.zsh
# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# bind UP and DOWN arrow keys (compatibility fallback
# for Ubuntu 12.04, Fedora 21, and MacOSX 10.9 users)
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

[ "$PATH_LOADED" != 1 ] && export PATH="$HOME/bin:$HOME/dotfiles/bin:$PATH"

if [[ -d $HOME/.rbenv ]]
then
  [ "$PATH_LOADED" != 1 ] && export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

export PATH_LOADED=1

alias b=bundle
alias be='bundle exec'
alias emacs="emacs -nw"
alias gcof='gco `gb|fzf`'
alias glo="git log --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
alias markdown-watch=vmd
alias dc="docker-compose"

export CLICOLOR=1
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

[[ -f ~/.fzf.zsh ]] && source ~/.fzf.zsh
autoload -U promptinit; promptinit
unsetopt nomatch
setopt nosharehistory

[[ -f $HOME/.zshrc.local ]] && source $HOME/.zshrc.local
export DISABLE_AUTO_TITLE=true
