#!/bin/bash

# Find the base directory where this script resides
base_dir=$( cd $(dirname $0) ; pwd -P )

# Copy everything prefixed with "dot_" into home directory; replacing "dot_" with "."
for i in $base_dir/dot_*
do
    [[ -f "$i" ]] && cp -v "$i" ~/`basename ${i/dot_/.}`
    [[ -d "$i" ]] && cp -vr "$i" ~/`basename ${i/dot_/.}`
done

cd ~
git clone https://github.com/magicmonty/bash-git-prompt.git .bash-git-prompt --depth=1

mkdir -p  .vim/autoload
curl https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim -o .vim/autoload/pathogen.vim

# Get Vim extensions
mkdir -p  .vim/bundle
cd .vim/bundle

git clone https://github.com/tpope/vim-sensible.git
git clone https://github.com/Yggdroot/indentLine.git
git clone https://github.com/tpope/vim-surround.git
git clone https://github.com/nathanaelkane/vim-indent-guides.git
git clone https://github.com/ntpeters/vim-better-whitespace.git
git clone https://github.com/bling/vim-airline.git
git clone https://github.com/vim-airline/vim-airline-themes.git
git clone https://github.com/airblade/vim-gitgutter.git
git clone --recursive https://github.com/davidhalter/jedi-vim.git
git clone https://github.com/altercation/vim-colors-solarized.git

git clone https://github.com/scrooloose/nerdtree.git

# Syntax Highlighting
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
git clone https://github.com/b4b4r07/vim-hcl.git
