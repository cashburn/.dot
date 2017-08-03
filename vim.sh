#!/bin/bash
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/ervandew/supertab ~/.vim/bundle/supertab
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript
mkdir ~/.vim/colors
curl -LSso ~/.vim/autoload/onedark.vim https://raw.githubusercontent.com/joshdick/onedark.vim/master/autoload/onedark.vim
curl -LSso ~/.vim/colors/hybrid.vim https://raw.githubusercontent.com/flazz/vim-colorschemes/master/colors/hybrid.vim
cp onedark.vim ~/.vim/colors/
unzip syntax.zip -d ~/.vim/
