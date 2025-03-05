#!/bin/bash

# IMPORTANT!! CUSTOMIZE YOUR GIT USERNAME AND EMAIL HERE!!!!
username="Colin Ashburn"   # TODO: Change to your name!
email="cashburn26@gmail.com"   # TODO: Change to your email!

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

git config --global user.name "$username"
git config --global user.email "$email"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone "https://github.com/zsh-users/zsh-syntax-highlighting.git" "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" #Makes shell turn green when you type a valid command.
git clone "https://github.com/zsh-users/zsh-history-substring-search" "$HOME/.oh-my-zsh/custom/plugins/zsh-history-substring-search" #Type any portion of a past command then press up/down arrows to scroll through use.

#Add any other zsh plugins you want.

ln -sf "$DIR/zshrc" "$HOME/.zshrc" #A customized zsh config file.
ln -sf "$DIR/vimrc" "$HOME/.vimrc" #A customized vim config file.
ln -sf "$DIR/bashrc" "$HOME/.bashrc" #A customized bash config file.
ln -sf "$DIR/cashburn.zsh-theme" "$HOME/.oh-my-zsh/custom/themes/cashburn.zsh-theme" #A customized zsh theme
ln -sf "$HOME/.dot/.gitignore_global" "$HOME/.gitignore_global"   #A nice gitignore file to make git ignore compiled or generated OS files. 
chsh -s /bin/zsh
