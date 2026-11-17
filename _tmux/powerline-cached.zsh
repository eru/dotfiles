#!/opt/homebrew/bin/zsh -f
# tmux-powerline の出力を一定秒数キャッシュするラッパー
#
# tmux は #() のコマンドを status-interval に関係なく、再描画のたびに
# クライアントごと最大毎秒 1 回実行し直す。powerline.sh は 1 回でセグメント用の
# プロセスを数十個起動するため、Defender(epsext) の負荷が跳ね上がる。
# キャッシュが新しい間は外部コマンドを一切起動せず、前回の出力を返す。
#
# usage: powerline-cached.zsh <left|right> [ttl_sec]

zmodload zsh/datetime zsh/files

side=${1:?usage: powerline-cached.zsh <left|right> [ttl_sec]}
ttl=${2:-30}
dir=${TMPDIR:-/tmp}/tmux-powerline-cache
stamp=$dir/$side.stamp
out=$dir/$side.out

last=0
[[ -r $stamp ]] && read -r last < $stamp

if (( EPOCHSECONDS - last >= ttl )) || [[ ! -s $out ]]; then
  [[ -d $dir ]] || mkdir -p $dir
  # 同時に呼ばれた他クライアントが重ねて生成しないよう、先に stamp を更新する
  print -r -- $EPOCHSECONDS > $stamp
  $HOME/.tmux/plugins/tmux-powerline/powerline.sh $side > $out.$$ && mv -f $out.$$ $out
fi

print -rn -- "$(<$out)"
