
# SHELL
export SHELL=`which zsh`

export GIT_EDITOR=`which vim`

# /etc/profile を読み込む
if [ -f /etc/profile ]; then
	source /etc/profile
fi

# cd で pushd する
setopt auto_pushd

# pushd で同じディレクトリを重複してプッシュしない
setopt pushd_ignore_dups

# 直前と同じコマンドはヒストリに追加しない
setopt hist_ignore_dups

# ヒストリに追加されるコマンドが古いものと同じなら古い方を削除
setopt hist_ignore_all_dups

#
# PATHs
#
export PATH=$PATH:~/.bin/:~/.dotfiles/.bin

#
# Python
#
alias python=python2.7

#
# IMPORTs
#
for f (~/.dotfiles/.zshrc.*) source "${f}"
source ~/.dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.dotfiles/.git-flow-completion.zsh

# Attache tmux
if [ -z "$TMUX" -a -z "$STY" ]; then
    if type tmuxx >/dev/null 2>&1; then
        tmuxx
    elif type tmux >/dev/null 2>&1; then
        if tmux has-session && tmux list-sessions | /usr/bin/grep -qE '.*]$'; then
            tmux attach && echo "tmux attached session "
        else
            tmux new-session && echo "tmux created new session"
        fi
    elif type screen >/dev/null 2>&1; then
        screen -rx || screen -D -RR
    fi
fi
