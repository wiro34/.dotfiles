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
export PATH=$PATH:~/.bin:~/.dotfiles/.bin
export PATH=~/.nodebrew/current/bin:$PATH

#
# EDITOR
#
export EDITOR=vim
export DISPLAY=:1

