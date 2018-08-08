# /etc/profile を読み込む
if [ -f /etc/profile ]; then
	source /etc/profile
fi

export SHELL=`which zsh`

# Attache tmux
if [ -z "$TMUX" -a -z "$STY" ]; then
  if type tmux >/dev/null 2>&1; then
    if tmux has-session && tmux list-sessions | /usr/bin/grep -qE '.*]$'; then
      exec tmux attach && echo "tmux attached session "
    else
      exec tmux
    fi
  fi
fi

export GIT_EDITOR=`which vim`

# cd で pushd する
setopt auto_pushd

# pushd で同じディレクトリを重複してプッシュしない
setopt pushd_ignore_dups

# 直前と同じコマンドはヒストリに追加しない
setopt hist_ignore_dups

# ヒストリに追加されるコマンドが古いものと同じなら古い方を削除
setopt hist_ignore_all_dups

eval "$(direnv hook zsh)"

#
# IMPORTs
#
for f (~/.dotfiles/.zshrc.*) source "${f}"
source ~/.dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.dotfiles/.git-flow-completion.zsh
