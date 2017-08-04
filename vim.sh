#!/bin/bash
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
git clone https://github.com/ervandew/supertab ~/.vim/bundle/supertab
mkdir ~/.vim/colors
curl -LSso ~/.vim/autoload/onedark.vim https://raw.githubusercontent.com/joshdick/onedark.vim/master/autoload/onedark.vim
curl -LSso ~/.vim/colors/hybrid.vim https://raw.githubusercontent.com/flazz/vim-colorschemes/master/colors/hybrid.vim
cp onedark.vim ~/.vim/colors/
unzip syntax.zip -d ~/.vim/
