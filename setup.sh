DOT_FILES=(.bash_profile .zshrc .zshprofile .zpreztorc)

for file in ${DOT_FILES[@]}
do 
    ln -s $HOME/dotfiles/$file $HOME/$file
done