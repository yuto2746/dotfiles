.(ドット)から始まる設定ファイルを管理

# Bash の設定ファイル
## .bash_profile
ログイン時にのみ実行される

    用途
    ・ 環境変数を設定する (export する変数)

## .bashrc (未作成)
対話モードの bash を起動する時に毎回実行される

 bash を起動する度に毎回設定する必要があるものを記述する
    
    用途
    ・環境変数でない変数を設定する (export しない変数)
    ・エイリアスを定義する
    ・シェル関数を定義する
    ・コマンドライン補完の設定をする

# Zsh の設定ファイル
起動時に読み込むファイルの順序

 - ログインシェル起動時
    - .zshenv
    - .zprofile
    - .zshrc
    - .zlogin

 - インタラクティブシェル起動時
    - .zshenv
    - .zshrc

 - シェルスクリプト実行時
    - .zshenv

また、それぞれログアウト時に、 .zlogout を読み込む

## .zshenv (未作成)
ログインシェルとインタラクティブシェルの起動時とシェルスクリプト実行時に読み込む

    用途
    ・環境変数を設定する

## .zprofile
ログインシェル起動時に読み込む

    用途
    ・ログインシェルの時だけ必要な設定をする

## .zshrc
ログインシェルとインタラクティブの両方で読み込まれる

シェルスクリプトでは不要な場合に記述する

    用途
    ・zsh を使用する上で必要な設定をする

## .zlogin (未作成)
ログインシェルで起動時に最後に読み込まれる

.zshrc による zsh の設定が完了した後に読み込まれる

    用途
    ・ログインシェルの時だけ必要な設定をする

ここでは、.zprofile を使うため、.zlogin は使わない

## .zlogout (未作成)
ログアウト時に読み込まれる

    用途
    ・最後に特定の処理をさせたい時に設定する

## .zpreztorc
zsh のフレームワークである Prezto の設定ファイル

# その他
## .vimrc
vim の設定ファイル

## setup.sh
各設定ファイルを dotfile で管理するために、$HOME にシンボリックリンクを作る shell コマンド