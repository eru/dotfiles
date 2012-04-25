" NeoBundle動かすのに必要
set nocompatible
filetype off

" NeoBundle 読み込み
set rtp+=~/dotfiles/neobundle.vim
if has('vim_starting')
    set runtimepath+=~/dotfiles/neobundle.vim
    call neobundle#rc(expand('~/.vim/'))
endif

" 行番号表示
set number
" Tab幅設定
set tabstop=4
set shiftwidth=4
set smarttab
" softtab使う
set expandtab
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
" 保存時に行末スペース削除
autocmd BufWritePre * :%s/\s\+$//e
" 保存時にHardTab=>SoftTab変換
autocmd BufWritePre * :retab

" ColorScheme
colorscheme developer
hi LineNr ctermfg=1

" Plugins
" Reference を vim から見れるようにする(ex. :Ref perldoc Encode)
NeoBundle 'thinca/vim-ref'
" ちょーすごい補完
NeoBundle 'Shougo/neocomplcache'
" くいっくらん(ex. \r)
NeoBundle 'thinca/vim-quickrun'
" XML 編集を便利にする
NeoBundle 'sukima/xmledit'
" 整形
NeoBundle 'Align'
NeoBundle 'h1mesuke/vim-alignta'
" テキストオブジェクトを便利にする
NeoBundle 'surround.vim'
" ワード移動
NeoBundle 'smartword'
" すむーずすくろーる
NeoBundle 'Smooth-Scroll'
" 外部 grep(ex. :Grep hoge)
NeoBundle 'grep.vim'
" vim の正規表現を perl とかと同じにする(ex. :%S/(aa|bb|cc|)//g)
NeoBundle 'eregex.vim'
" SQL 整形(ex. :SQLUFormatter)
NeoBundle 'SQLUtilities'
" メソッド, 変数宣言一覧(ex. :Tlist)
NeoBundle 'taglist.vim'
" Vim にも Shell を！
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/vimshell'
" 一覧
NeoBundle 'Shougo/unite.vim'
" 括弧閉じ忘れ防止
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'Highlight-UnMatched-Brackets'
" Gist
NeoBundle 'mattn/webapi-vim'
NeoBundle 'mattn/gist-vim'
" コメントアウト
NeoBundle 'EnhCommentify.vim'
" Git
NeoBundle 'tpope/vim-fugitive'

" NeoBundle用設定
filetype plugin indent on
