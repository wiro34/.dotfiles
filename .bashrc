# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific scripts
export PATH=~/.dotfiles/.bin:$PATH

alias envsudo="sudo env PATH=$PATH"
