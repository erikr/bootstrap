BOOTSTRAP_DIR=$HOME/bootstrap
files=".zshrc .aliases .vimrc .gitignore .wgetrc .tmux.conf"
for file in $files; do
    echo "Attempting to delete $HOME/$file"
    rm $HOME/$file
    echo "Symlinking $HOME/$file to $BOOTSTRAP_DIR/$file"
    ln -s $BOOTSTRAP_DIR/$file $HOME/$file
done

NVIM_DIR=$HOME/.config/nvim
echo "Symlinking $BOOTSTRAP_DIR/init.vim to $NVIM_DIR/init.vim"
mkdir -p $NVIM_DIR
rm $NVIM_DIR/init.vim
ln -s $BOOTSTRAP_DIR/init.vim $NVIM_DIR/init.vim
