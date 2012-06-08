# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
export SCALA_HOME=/usr/local/lib/scala
export PATH=/usr/local/bin:$SCALA_HOME/bin:$PATH

export PATH=~/.scripts:$PATH

alias envsudo="sudo env PATH=$PATH"
alias play="~/lib/play2/play"

# ログイン時にzshを起動
#if [ -x `which zsh` ] ; then
#  exec zsh
#fi

