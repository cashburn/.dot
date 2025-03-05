#!/bin/bash
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
git clone https://github.com/ervandew/supertab ~/.vim/bundle/supertab
mkdir ~/.vim/colors
curl -LSso ~/.vim/autoload/onedark.vim https://raw.githubusercontent.com/joshdick/onedark.vim/master/autoload/onedark.vim
curl -LSso ~/.vim/colors/hybrid.vim https://raw.githubusercontent.com/flazz/vim-colorschemes/master/colors/hybrid.vim
cp "$DIR/onedark.vim" ~/.vim/colors/
unzip "$DIR/syntax.zip" -d ~/.vim/
