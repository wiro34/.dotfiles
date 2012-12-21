# zsh Environment Configuration File

#
# SHELL
#
export SHELL=`which zsh`

#
# LANG
# 
export LANG=ja_JP.UTF-8

#
# rbenv
#
export RBENV_ROOT=/usr/local/lib/rbenv
export PATH="$RBENV_ROOT/bin:$PATH"
eval "$(rbenv init -)"
