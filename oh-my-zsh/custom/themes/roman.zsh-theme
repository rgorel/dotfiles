# vim:ft=zsh ts=2 sw=2 sts=2
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' check-for-staged-changes true

zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:*' unstagedstr '*'

precmd() {
    vcs_info
}

zstyle ':vcs_info:git*' formats "%F{yellow}%b %F{242}%u%c %m%F{$reset_color}"
zstyle ':vcs_info:git*' actionformats "%F{yellow}%b|%a %F{242}%u%c %m%F{$reset_color}"

zstyle ':vcs_info:git*+set-message:*' hooks git-untracked

+vi-git-untracked(){
    if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
        git status --porcelain | grep '??' &> /dev/null ; then
        # This will show the marker if there are any untracked files in repo.
        # If instead you want to show the marker only if there are untracked
        # files in $PWD, use:
        #[[ -n $(git ls-files --others --exclude-standard) ]] ; then
        hook_com[staged]+='?'
    fi
}
git_info='${vcs_info_msg_0_} '


PROMPT="
%{$fg[blue]%}%~%{$reset_color%} $git_info
%(?.%F{magenta}.%F{red})%B>%b %{$reset_color%}"
