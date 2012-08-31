
# /etc/profile を読み込む
if [ -f /etc/profile ]; then
	source /etc/profile
fi

source ~/.zshenv
source ~/.dotfiles/.zshrc.bindkey

# 補完機能を有効
autoload -U compinit
compinit

# プロンプトのカラー表示を有効
autoload -U colors
colors

# cd で pushd する
setopt auto_pushd

# pushd で同じディレクトリを重複してプッシュしない
setopt pushd_ignore_dups

# 直前と同じコマンドはヒストリに追加しない
setopt hist_ignore_dups

# ヒストリに追加されるコマンドが古いものと同じなら古い方を削除
setopt hist_ignore_all_dups

# gitコマンドのエイリアス
alias g=git

# sudo
alias sudo="sudo env PATH=$PATH"
