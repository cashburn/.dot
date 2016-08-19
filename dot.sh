#!/bin/bash

git config --global user.name "Colin Ashburn"   #TODO: Change to your name.
git config --global user.email cashburn@purdue.edu   #TODO: Change to your email.

git clone git://github.com/robbyrussell/oh-my-zsh.git "$HOME/.oh-my-zsh"
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" #Makes shell turn green when you type a valid command.
git clone git://github.com/zsh-users/zsh-history-substring-search "$HOME/.oh-my-zsh/custom/plugins/zsh-history-substring-search" #Type any portion of a past command then press up/down arrows to scroll through use.

source "vim.sh"

#Add any other zsh plugins you want.

ln -s "zshrc" "$HOME/.zshrc" #A customized zsh config file.
ln -s "vimrc" "$HOME/.vimrc" #A customized vim config file.
ln -s "bashrc" "$HOME/.bashrc" #A customized bash config file.
cp "cashburn.zsh-theme" "$HOME/.oh-my-zsh/themes/cashburn.zsh-theme" #A customized zsh theme
ln -s "$HOME/.dot/.gitignore_global" "$HOME/.gitignore_global"   #A nice gitignore file to make git ignore compiled or generated OS files. 
chsh -s /bin/zsh

