#!/bin/sh
DIR=`dirname $(readlink -f $0)`
ln -sfv -T $DIR/vim ~/.vim
ln -sfv $DIR/pathogen/autoload/pathogen.vim ~/.vim/autoload/
ln -sfv $DIR/vimrc ~/.vimrc
ln -sfv $DIR/gvimrc ~/.gvimrc
