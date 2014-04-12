
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

# z
#. `brew --prefix`/etc/profile.d/z.sh
#function precmd () {
#   z --add "$(pwd -P)"
#}

#
# PATHs
#
export PATH=$PATH:~/.bin/:~/.dotfiles/.bin
export PATH=$PATH:/usr/local/lib/scala/bin:/usr/local/lib/sbt/bin

# rbenv
export RBENV_ROOT=/usr/local/rbenv
export PATH="$RBENV_ROOT/bin:$PATH"
eval "$(rbenv init -)"
export PATH=$PATH:/usr/local/bin

# Postgresql
export PGDATA=/usr/local/var/postgres

#
# IMPORTs
#
source ~/.dotfiles/.zshrc.alias
source ~/.dotfiles/.zshrc.bindkey
source ~/.dotfiles/.zshrc.cdr
source ~/.dotfiles/.zshrc.functions
source ~/.dotfiles/.zshrc.history
source ~/.dotfiles/.zshrc.prompt
source ~/.dotfiles/.zshrc.completion
if [ -e ~/.dotfiles/.zshrc.secret ] ; then
  source ~/.dotfiles/.zshrc.secret
fi
if [ -e ~/.dotfiles/.zshrc.platform ] ; then
  source ~/.dotfiles/.zshrc.platform
fi
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

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
