#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

git config --global user.name "Colin Ashburn"   #TODO: Change to your name.
git config --global user.email cashburn@purdue.edu   #TODO: Change to your email.

git clone git://github.com/robbyrussell/oh-my-zsh.git "$HOME/.oh-my-zsh"
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" #Makes shell turn green when you type a valid command.
git clone git://github.com/zsh-users/zsh-history-substring-search "$HOME/.oh-my-zsh/custom/plugins/zsh-history-substring-search" #Type any portion of a past command then press up/down arrows to scroll through use.

source vim.sh

#Add any other zsh plugins you want.

ln -s "$DIR/zshrc" "$HOME/.zshrc" #A customized zsh config file.
ln -s "$DIR/vimrc" "$HOME/.vimrc" #A customized vim config file.
ln -s "$DIR/bashrc" "$HOME/.bashrc" #A customized bash config file.
cp "$DIR/cashburn.zsh-theme" "$HOME/.oh-my-zsh/themes/cashburn.zsh-theme" #A customized zsh theme
ln -s "$HOME/.dot/.gitignore_global" "$HOME/.gitignore_global"   #A nice gitignore file to make git ignore compiled or generated OS files. 
chsh -s /bin/zsh

