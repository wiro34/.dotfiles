
source ~/.dotfiles/.vimrc.basic
source ~/.dotfiles/.vimrc.appearance
source ~/.dotfiles/.vimrc.colors
source ~/.dotfiles/.vimrc.completion
source ~/.dotfiles/.vimrc.editing
source ~/.dotfiles/.vimrc.encoding
source ~/.dotfiles/.vimrc.tabs

if filereadable(expand('~/.dotfiles/.vim/bundle/neobundle.vim/README.md'))
  " git submodule init
  " git submodule update
  source ~/.dotfiles/.vimrc.neobundle
  source ~/.dotfiles/.vimrc.bundle
endif

