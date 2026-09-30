# Powerlevel10k configuration, hand-written to resemble the old "roman" theme:
#
#   <blue path>  <yellow branch> <gray markers>
#   > (magenta on success, red on failure)
#
# Markers: '+' staged, '*' unstaged, '?' untracked  (same glyphs as before).
# Pure ASCII, so no Nerd Font is required.

# Temporarily change options and restore them at the end.
'builtin' 'local' '-a' 'p10k_config_opts'
[[ ! -o 'aliases'         ]] || p10k_config_opts+=('aliases')
[[ ! -o 'sh_glob'         ]] || p10k_config_opts+=('sh_glob')
[[ ! -o 'no_brace_expand' ]] || p10k_config_opts+=('no_brace_expand')
'builtin' 'setopt' 'no_aliases' 'no_sh_glob' 'brace_expand'

() {
  emulate -L zsh -o extended_glob

  unset -m 'POWERLEVEL9K_*'

  # Two-line prompt, nothing on the right side.
  typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs newline prompt_char)
  typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()

  # No powerline separators/backgrounds — plain text, like the old prompt.
  typeset -g POWERLEVEL9K_MODE=ascii
  typeset -g POWERLEVEL9K_BACKGROUND=
  typeset -g POWERLEVEL9K_{LEFT,RIGHT}_{LEFT,RIGHT}_WHITESPACE=
  typeset -g POWERLEVEL9K_{LEFT,RIGHT}_SUBSEGMENT_SEPARATOR=' '
  typeset -g POWERLEVEL9K_{LEFT,RIGHT}_SEGMENT_SEPARATOR=
  typeset -g POWERLEVEL9K_VISUAL_IDENTIFIER_EXPANSION=

  # Blank line before every prompt except the first (keeps the old spacing).
  typeset -g POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

  #############################[ dir ]#############################
  typeset -g POWERLEVEL9K_DIR_FOREGROUND=blue
  typeset -g POWERLEVEL9K_SHORTEN_STRATEGY=
  typeset -g POWERLEVEL9K_DIR_SHORTEN_LENGTH=
  # Show the path like the old %~ (home shown as ~).
  typeset -g POWERLEVEL9K_DIR_PATH_ABSOLUTE=false

  #############################[ vcs ]#############################
  # One color for the whole git segment: yellow, like the old branch color.
  typeset -g POWERLEVEL9K_VCS_CLEAN_FOREGROUND=yellow
  typeset -g POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=yellow
  typeset -g POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=yellow
  typeset -g POWERLEVEL9K_VCS_CONFLICTED_FOREGROUND=yellow
  typeset -g POWERLEVEL9K_VCS_LOADING_FOREGROUND=242

  # No branch icon, just the name.
  typeset -g POWERLEVEL9K_VCS_BRANCH_ICON=

  # Report staged / unstaged / untracked so the content function below can
  # render the +, *, ? markers.
  typeset -g POWERLEVEL9K_VCS_{STAGED,UNSTAGED,UNTRACKED}_MAX_NUM=1

  # Build the segment content: "<branch> <markers>" with gray markers.
  function my_git_formatter() {
    emulate -L zsh
    if [[ -n $P9K_CONTENT ]]; then
      typeset -g my_git_format=$P9K_CONTENT
      return
    fi
    # Branch name in yellow.
    local out="%F{yellow}${${VCS_STATUS_LOCAL_BRANCH:-${VCS_STATUS_COMMIT[1,8]}}//\%/%%}%f"
    # Markers in gray (242), matching the old %F{242} styling.
    local markers=''
    (( VCS_STATUS_NUM_STAGED    )) && markers+='+'
    (( VCS_STATUS_NUM_UNSTAGED  )) && markers+='*'
    (( VCS_STATUS_NUM_UNTRACKED )) && markers+='?'
    [[ -n $markers ]] && out+=" %F{242}${markers}%f"
    typeset -g my_git_format=$out
  }
  functions -M my_git_formatter 2>/dev/null

  typeset -g POWERLEVEL9K_VCS_DISABLE_GITSTATUS_FORMATTING=true
  typeset -g POWERLEVEL9K_VCS_CONTENT_EXPANSION='${$((my_git_formatter()))+${my_git_format}}'

  # Count untracked files so '?' is accurate.
  typeset -g POWERLEVEL9K_VCS_UNTRACKED_ICON=

  #########################[ prompt_char ]########################
  # '>' like before: magenta on success, red on error. Bold.
  typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND=magenta
  typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND=red
  typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_{VIINS,VICMD,VIVIS,VIOWR}_CONTENT_EXPANSION='>'
  typeset -g POWERLEVEL9K_PROMPT_CHAR_LEFT_{LEFT,RIGHT}_WHITESPACE=
  # Keep the space the old prompt had after '>'.
  typeset -g POWERLEVEL9K_PROMPT_CHAR_RIGHT_PROMPT_LAST_SEGMENT_END_SYMBOL=

  # Instant prompt: show a cached prompt immediately, fill git in async.
  typeset -g POWERLEVEL9K_INSTANT_PROMPT=verbose
  typeset -g POWERLEVEL9K_DISABLE_HOT_RELOAD=true
}

# Restore the options.
(( ${#p10k_config_opts} )) && setopt ${p10k_config_opts[@]}
'builtin' 'unset' 'p10k_config_opts'
