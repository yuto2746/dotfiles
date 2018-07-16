DOT_FILES=(.bash_profile .zshenv .zshrc .zprofile .zpreztorc .vimrc)

for file in ${DOT_FILES[@]}
do 
    ln -s $HOME/dotfiles/$file $HOME/$file
done