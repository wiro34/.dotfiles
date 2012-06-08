
# ログインシェルとして起動しなかった場合にも zprofile を読み込むようにしておく
if [ -f /etc/zprofile ]; then
  . /etc/zprofile
fi

HISTFILE=$HOME/.zsh-history

autoload -U compinit
compinit

source ~/.zshenv
source ~/.dotfiles/.zshrc.bindkey

