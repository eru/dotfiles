" 基本設定

" 文字コードと改行コード
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,iso-2022-jp,euc-jp,sjis,cp932,cp20932
set fileformats=unix,dos,mac

" □とか○の文字があってもカーソル位置がずれないようにする
if filereadable(expand('~/dotfiles/_vim/ambwidth.vimrc'))
    source ~/.vim/ambwidth.vimrc
endif

" 行番号表示
set number

" カーソル行をハイライト
set cursorline

" Tab幅設定
set tabstop=2
set shiftwidth=2
set smarttab

" softtab使う
set expandtab

" 自動インデント
set autoindent
set smartindent

" 折りたたみ
set foldmethod=indent
set foldlevel=100

" ハイライト
syntax on
set hlsearch
set showmatch
set matchtime=1

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

" 自動改行しない
set textwidth=0

" 自動整形でマルチバイト文字を考慮
set formatoptions=lmoq

" 一行が長くても表示させる
set display=lastline

" ステータス表示関連
set ruler
set showcmd
set showmode
set laststatus=2
"set statusline=%<%f\ %m%r%h%w
"set statusline+=%{'['.(&fenc!=''?&fenc:&enc).']['.&fileformat.']'}
"set statusline+=%=%l/%L,%c%V%8P
