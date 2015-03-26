 # .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# User specific environment and startup programs
export DISPLAY=:1

PATH=$PATH:$HOME/bin
PATH=$PATH:/sbin:/usr/sbin
export PATH
