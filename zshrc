#START=$(gdate +%s.%N)
export TERM='xterm-256color'
export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME=roman
plugins=(git zsh-completions)
source $ZSH/oh-my-zsh.sh
source ~/dotfiles/my-zsh.zsh
export HISTSIZE=1000
export SAVEHIST=1000
#END=$(gdate +%s.%N)
#DIFF=$(echo "$END - $START" | bc)
#echo $DIFF
