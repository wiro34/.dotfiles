#!/bin/sh

FILES=(
  .bashrc
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

#if [ -e ~/.bashrc ] ; then
#
#ln -s ~/.dotfiles/.bashrc    ~/.bashrc
#ln -s ~/.dotfiles/.zshrc     ~/.zshrc
#ln -s ~/.dotfiles/.zshenv    ~/.zshenv
#ln -s ~/.dotfiles/.vimrc     ~/.vimrc
#ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
