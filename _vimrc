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
" 改行コードの自動認識
set fileformats=unix,dos,mac
" □とか○の文字があってもカーソル位置がずれないようにする
if exists('&ambiwidth')
set ambiwidth=double
endif

" KeyMap
" いつでも, h j k l でカーソル移動
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
noremap <C-k> <Up>
noremap <C-l> <Right>
" いつでも, C-a C-e で行頭/行末移動
noremap <C-a> <Home>
noremap! <C-a> <Home>
noremap <C-e> <End>
noremap! <C-e> <End>
" PgUp, PgDown でも SmoothScroll を使う
map <PageUp> <C-b><Home>
map <PageDown> <C-f><Down><Home>
" 表示行単位で上下移動するように
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk
" 逆に普通の行単位で移動したい時のために逆の map も設定しておく
nnoremap gj j
nnoremap gk k

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
" NeoBundle 'Smooth-Scroll'
NeoBundle 'eru/Smooth-Scroll'
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
" markdown
NeoBundle 'tpope/vim-markdown'

" NeoBundle用設定
filetype plugin indent on
