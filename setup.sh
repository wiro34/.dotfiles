#!/bin/sh

PLATFORM="$1"
if [ -z "$1" ]; then
  if [ `uname` = "Darwin" ]; then
    PLATFORM="osx"
  elif [ `uname` = "Linux" ]; then
    PLATFORM="linux"
  else
    echo "Unknown platform"
  fi
fi
echo "Setting up for $PLATFORM"

git checkout platform/$PLATFORM > /dev/null

FILES=(
  .bashrc
  .bash_profile
  .zshrc
  .zshenv
  .vimrc
  .gitconfig
  .tmux.conf
)

DIR=$HOME/.dotfiles

for FILE in ${FILES[@]} ; do
  if [ -f $HOME/$FILE ] ; then
    echo "File is already existed. Please rerun after remove file: $HOME/$FILE"
  else
    ln -s $DIR/$FILE $HOME/$FILE
  fi
done
