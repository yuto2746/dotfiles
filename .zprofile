# pyenv と pyenv virtualenv のパスを通す
PYENV_ROOT=~/.pyenv
export PATH=$PATH:$PYENV_ROOT/bin
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# rbenv のパスを通す
RBENV_ROOT=~/.rbenv
export PATH=$PATH:$RBENV_ROOT/bin
eval "$(rbenv init -)"