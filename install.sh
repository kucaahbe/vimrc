#!/bin/bash
DIR=`dirname $(readlink -f $0)`
# vim config directory
ln -sfv -T $DIR/vim ~/.vim
# installing pathogen
ln -sfv $DIR/pathogen/autoload/pathogen.vim ~/.vim/autoload/
# vimrc and gvimrc:
ln -sfv $DIR/vimrc ~/.vimrc
ln -sfv $DIR/gvimrc ~/.gvimrc
