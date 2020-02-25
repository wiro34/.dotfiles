 # .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# User specific environment and startup programs
export PATH=$PATH:/sbin:/usr/sbin

export GOPATH=$HOME/.go
export PATH=$GOPATH/bin:$PATH

