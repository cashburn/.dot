#!/bin/bash

git config --global user.name "Colin Ashburn"   #TODO: Change to your name.
git config --global user.email cashburn@purdue.edu   #TODO: Change to your email.

git clone git://github.com/robbyrussell/oh-my-zsh.git "$HOME/.oh-my-zsh"
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" #Makes shell turn green when you type a valid command.
git clone git://github.com/zsh-users/zsh-history-substring-search "$HOME/.oh-my-zsh/custom/plugins/zsh-history-substring-search" #Type any portion of a past command then press up/down arrows to scroll through use.

#Add any other zsh plugins you want.

ln -s "$HOME/.dot/zshrc" "$HOME/.zshrc" #A customized zsh config file.
ln -s "$HOME/.dot/cashburn.zsh-theme" "$HOME/.oh-my-zsh/themes/cashburn.zsh-theme" #My awesome theme.
ln -s "$HOME/.dot/background.png" "$HOME/Pictures/background.png"   #Just a nice photo I took that I like to use for backgrounds.  TODO: Comment out and delete the picture in .dot if you want.
ln -s "$HOME/.dot/.gitignore_global" "$HOME/.gitignore_global"   #A nice gitignore file to make git ignore compiled or generated OS files. 
chsh -s /bin/zsh

