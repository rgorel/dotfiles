# Key bindings.
# Backfills oh-my-zsh lib/key-bindings.zsh for the common terminal keys.

bindkey -e   # emacs-style line editing (default; set explicitly)

# Home / End.
bindkey '^[[H'  beginning-of-line
bindkey '^[[F'  end-of-line
bindkey '^[[1~' beginning-of-line
bindkey '^[[4~' end-of-line
bindkey '^A'    beginning-of-line
bindkey '^E'    end-of-line

# Delete / Insert.
bindkey '^[[3~' delete-char
bindkey '^[[2~' overwrite-mode

# Ctrl-Left / Ctrl-Right: jump one word.
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
# Alt-Left / Alt-Right: jump one word (macOS terminals).
bindkey '^[[1;3C' forward-word
bindkey '^[[1;3D' backward-word

# Treat '/' as a word boundary so word-wise commands stop at each path segment.
# (Default WORDCHARS includes '/', which makes a whole path count as one word.)
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

# Ctrl-w and Option-Backspace: delete the previous word (one path segment).
bindkey '^W' backward-kill-word
bindkey '^[^?' backward-kill-word   # Option-Backspace (Esc + DEL)
bindkey '^[^H' backward-kill-word   # some terminals send Esc + BS

# Search history by the prefix already typed.
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey '^[[A' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search
