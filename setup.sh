#!/bin/sh

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
  if [ -e $HOME/$FILE ] ; then
    if [ ! -ef $HOME/$FILE.bak  ] ; then
      mv $HOME/$FILE $HOME/$FILE.bak
    else
      rm $HOME/$FILE
    fi
  fi
  ln -s $DIR/$FILE $HOME/$FILE
done
