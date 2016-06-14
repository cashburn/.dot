#!/bin/bash
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/ervandew/supertab ~/.vim/bundle/supertab
mkdir ~/.vim/colors && curl -LSso ~/.vim/colors/hybrid.vim https://raw.githubusercontent.com/flazz/vim-colorschemes/master/colors/hybrid.vim
