# History configuration.
# Backfills oh-my-zsh lib/history.zsh. HISTSIZE/SAVEHIST stay in the entrypoint.

export HISTFILE=$HOME/.zsh_history

setopt extended_history        # record timestamp of each command
setopt hist_expire_dups_first  # trim duplicates first when the file is full
setopt hist_ignore_dups        # do not record a command equal to the previous
setopt hist_ignore_space       # do not record commands that start with a space
setopt hist_verify             # show expanded history line before running it
setopt inc_append_history      # append immediately, not only on shell exit
#setopt share_history           # share history across running shells
