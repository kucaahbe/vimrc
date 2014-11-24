#!/bin/sh
set -e

git submodule update --init

DIR=`dirname $(readlink -f $0)`

VIMDIR=$HOME/.vim
if [ ! -L $VIMDIR -a \( -d $VIMDIR -o -f $VIMDIR \) ]; then
  echo file $VIMDIR exists, please remove it
  exit 1
fi

# on linux ln symlinks directories
# in some strange manner if destination exists
[ -L $VIMDIR ] && rm -v $VIMDIR
ln -sfv $DIR/vim    $VIMDIR
ln -sfv $DIR/vimrc  ~/.vimrc
ln -sfv $DIR/gvimrc ~/.gvimrc
