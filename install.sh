#!/bin/bash
set -e

# portable way to get script dir,
# found here http://stackoverflow.com/questions/4774054/reliable-way-for-a-bash-script-to-get-the-full-path-to-itself/20265654
pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd -P`
popd > /dev/null

git submodule update --init

DIR=$SCRIPTPATH
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
