# Bare-zsh entrypoint (replaces oh-my-zsh). Central hub: sources modular config
# from ~/dotfiles/zsh/ and the existing personal files. Keep this file minimal.

# --- Powerlevel10k instant prompt -------------------------------------------
# Must stay near the top and run before anything that produces output.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export TERM='xterm-256color'

ZSH_CONFIG_DIR=$HOME/dotfiles/zsh

# --- Core shell behaviour ----------------------------------------------------
source $ZSH_CONFIG_DIR/history.zsh
export HISTSIZE=1000
export SAVEHIST=1000

source $ZSH_CONFIG_DIR/completion.zsh
source $ZSH_CONFIG_DIR/directories.zsh
source $ZSH_CONFIG_DIR/keybindings.zsh
source $ZSH_CONFIG_DIR/git-aliases.zsh
source $ZSH_CONFIG_DIR/pyenv.zsh

# --- Prompt (powerlevel10k submodule) ----------------------------------------
source $ZSH_CONFIG_DIR/powerlevel10k/powerlevel10k.zsh-theme
source $ZSH_CONFIG_DIR/p10k.zsh

# --- Personal config ---------------------------------------------------------
source $HOME/dotfiles/my-zsh.zsh
[[ -f $HOME/.zshrc.local ]] && source $HOME/.zshrc.local
