" sudo w
cabbrev sudo w !sudo tee %

" 保存時にsudo権限で無理やり保存
cnoremap w!! w !sudo tee > /dev/null %<CR> :e!<CR>

" 保存時に行末スペース削除
autocmd BufWritePre * :%s/\s\+$//e

" 保存時にHardTab=>SoftTab変換
autocmd BufWritePre * :retab

" 指定文字コードで強制的にファイルを開く
command! Cp932 edit ++enc=cp932
command! Eucjp edit ++enc=euc-jp
command! Iso2022jp edit ++enc=iso-2022-jp
command! Utf8 edit ++enc=utf-8
command! Jis Iso2022jp
command! Sjis Cp932

" insertモードを抜けるとIMEオフ
set noimdisable
set iminsert=0 imsearch=0
set noimcmdline
inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>

" :Ptで貼り付けモード
command! Pt :set paste!
command! NoPt :set nopaste
