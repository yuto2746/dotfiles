#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

# アクセスポイントの名前が Amaterasu であれば、プロキシの設定をする
appname=Amaterasu
if [ "`networksetup -getairportnetwork  en0  | awk '{print $4}'`" = "$appname" ]; then
  scselect Lab
  export http_proxy="http://proxy.cc.kindai.ac.jp:8080"
  export https_proxy="http://proxy.cc.kindai.ac.jp:8080"
else
  scselect Automatic
  export http_proxy=""
  export https_proxy=""
fi