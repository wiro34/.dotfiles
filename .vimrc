
source ~/.dotfiles/.vimrc.basic
source ~/.dotfiles/.vimrc.appearance
source ~/.dotfiles/.vimrc.colors
source ~/.dotfiles/.vimrc.completion
source ~/.dotfiles/.vimrc.editing
source ~/.dotfiles/.vimrc.encoding

if isdirectory(expand('~/.dotfiles/.vim/bundle/neobundle.vim'))
  source ~/.dotfiles/.vimrc.neobundle
  source ~/.dotfiles/.vimrc.bundle
endif

