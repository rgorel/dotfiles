# Lazy pyenv initialization.
# `pyenv init -` with its rehash costs ~130ms at startup. Instead, put the shims
# on PATH now (cheap) and run the full init only on the first pyenv call.

export PYENV_ROOT=$HOME/.pyenv

if [[ -d $PYENV_ROOT/bin ]]; then
  export PATH=$PYENV_ROOT/bin:$PATH
fi

# Shims must be on PATH for `python`, `pip`, etc. to resolve before init runs.
if [[ -d $PYENV_ROOT/shims ]]; then
  export PATH=$PYENV_ROOT/shims:$PATH
fi

# Stub function. First invocation replaces itself with the real, fully
# initialized pyenv, then re-runs the requested command.
pyenv() {
  unfunction pyenv
  eval "$(command pyenv init - zsh)"
  pyenv "$@"
}
