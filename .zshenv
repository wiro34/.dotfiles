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
# Prompt
#
autoload promptinit
promptinit

PROMPT="[%n %(3~,%1~,%~)]%(!.#.$) "
PROMPT2="%_> "
SPROMPT="%r is correct? [n,y,a,e]: "
RPROMPT="[%~]"

