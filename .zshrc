fpath=(/usr/local/share/zsh-completions $fpath)

# Prezto の有効化
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
    source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# 補完機能を有効化
autoload -Uz compinit
compinit