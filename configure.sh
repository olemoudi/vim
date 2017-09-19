#!/bin/bash
set -e
mkdir -p ~/.vim
cp -r * ~/.vim/
cat olevimrc.vim >> ~/.vimrc
mkdir -p ~/.fonts
cp fonts/powerline/DejaVuSansMono/* ~/.fonts/
fc-cache -vf ~/.fonts/
git submodule foreach git pull origin master

