# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific scripts
alias envsudo="sudo env PATH=$PATH"
