 # .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin
PATH=$PATH:/sbin:/usr/sbin
export PATH

# ログイン時にzshを起動
if [ -x `which zsh` ] ; then
  exec zsh
fi
