#!/bin/bash

function github_clone(){
  git clone git://github.com/$1 $2
}

git config --global user.name "Colin Ashburn"
git config --global user.email cashburn@purdue.edu
github_clone "robbyrussell/oh-my-zsh.git" "$HOME/.oh-my-zsh"
github_clone "zsh-users/zsh-syntax-highlighting.git" "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting"
github_clone "zsh-users/zsh-history-substring-search" "$HOME/.oh-my-zsh/custom/plugins/zsh-history-substring-search"


ln -s "$HOME/.dot/zshrc" "$HOME/.zshrc"
ln -s "$HOME/.dot/cashburn.zsh-theme" "$HOME/.oh-my-zsh/themes/cashburn.zsh-theme"
chsh -s /bin/zsh

