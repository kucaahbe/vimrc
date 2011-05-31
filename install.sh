#!/bin/sh
DIR=`dirname $(readlink -f $0)`
ln -sfv $DIR/vim ~/.vim
ln -sfv $DIR/vimrc ~/.vimrc
