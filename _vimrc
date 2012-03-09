" Vundle動かすのに必要
set nocompatible
filetype off

" Vundle 読み込み
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" 行番号表示
set number
" Tab幅設定
set tabstop=4
set shiftwidth=4
" ハイライト
syntax on
set hlsearch
set showmatch
" 自動インデント
set autoindent
set smartindent
" ステータス表示関連
set ruler
set showcmd
set showmode
set laststatus=2
set statusline=%<%f\ %m%r%h%w
set statusline+=%{'['.(&fenc!=''?&fenc:&enc).']['.&fileformat.']'}
set statusline+=%=%l/%L,%c%V%8P
" スクロールした時にいい感じに
set scrolloff=5
" バックアップとらない
set nobackup
set noswapfile
" 変更されたら自動読み込み
set autoread
" 編集中でも開けるようにする
set hidden
" バックスペースでがしがし消せる
set backspace=indent,eol,start
