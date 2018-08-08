#
# LANG
# 
export LANG=ja_JP.UTF-8

# LF
LF=$(printf '\\\012_')
LF=${LF%_}

#
# PATHs
#
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:$HOME/.bin:$HOME/.dotfiles/.bin
export PATH=$HOME/.anyenv/bin:$PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH

#
# EDITOR
#
export EDITOR=vim
export DISPLAY=:1

# ANYENV
eval "$(anyenv init -)"

