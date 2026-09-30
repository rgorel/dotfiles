# Completion system + arrow-key selection menu.
# Backfills what oh-my-zsh lib/completion.zsh used to provide.

# Add extra completion functions if present (zsh-completions submodule/plugin).
[[ -d $HOME/.oh-my-zsh/custom/plugins/zsh-completions/src ]] && \
  fpath=($HOME/.oh-my-zsh/custom/plugins/zsh-completions/src $fpath)

autoload -Uz compinit

# Rebuild the dump at most once a day; otherwise load it fast (-C skips the
# security audit that makes startup slow).
_zcompdump=$HOME/.zcompdump
if [[ -n $_zcompdump(#qN.mh+24) ]]; then
  compinit -d $_zcompdump
else
  compinit -C -d $_zcompdump
fi
unset _zcompdump

# Case-insensitive matching.
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
# Arrow-key selectable menu.
zstyle ':completion:*' menu select
# Color the completion menu like ls.
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# Group matches under their descriptions.
zstyle ':completion:*' group-name ''

setopt complete_in_word   # complete from the cursor, not just end of word
setopt always_to_end      # move cursor to end after completion
