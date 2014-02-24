" NeoBundle動かすのに必要
set nocompatible
filetype off

" NeoBundle 読み込み
if has('vim_starting')
    set runtimepath+=~/dotfiles/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/'))

" 文字コードと改行コード
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,iso-2022-jp,euc-jp,sjis,cp932,cp20932
set fileformats=unix,dos,mac
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
if filereadable(expand('~/.vim/ambwidth.vimrc'))
    source ~/.vim/ambwidth.vimrc
endif
" 折りたたみ
set foldmethod=indent
set foldlevel=100

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
"map <PageUp> <C-b><Home>
"map <PageDown> <C-f><Down><Home>
" 表示行単位で上下移動するように
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk
" 逆に普通の行単位で移動したい時のために逆の map も設定しておく
nnoremap gj j
nnoremap gk k
" 貼り付け自動化
if &term =~ "xterm" || &term =~ "screen"
    let &t_ti .= "\e[?2004h"
    let &t_te .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    noremap <special> <expr> <Esc>[200~ XTermPasteBegin("0i")
    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
    cnoremap <special> <Esc>[200~ <nop>
    cnoremap <special> <Esc>[201~ <nop>
endif

" sudo w
cabbrev sudo w !sudo tee %

" ColorScheme
colorscheme developer
set background=dark

" extension
au BufNewFile,BufRead *.rst set tabstop=3 shiftwidth=3

" Plugins
" Reference を vim から見れるようにする(ex. :Ref perldoc Encode)
NeoBundle 'thinca/vim-ref'
" ちょーすごい補完
NeoBundle 'Shougo/neocomplcache'
if filereadable(expand('~/dotfiles/_vim/neocomplecache.vimrc'))
    source ~/dotfiles/_vim/neocomplecache.vimrc
endif
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
" NeoBundle 'grep.vim'
" vim の正規表現を perl とかと同じにする(ex. :%S/(aa|bb|cc|)//g)
NeoBundle 'eregex.vim'
" SQL 整形(ex. :SQLUFormatter)
NeoBundle 'SQLUtilities'
" メソッド, 変数宣言一覧(ex. :Tlist)
NeoBundle 'taglist.vim'
set tags=tags
let Tlist_Exit_OnlyWindow=1
" Vim にも Shell を！
NeoBundle 'Shougo/vimproc', {
    \ 'build' : {
    \     'mac' : 'make -f make_mac.mak',
    \     'unix' : 'make -f make_unix.mak',
    \    },
    \ }
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
" ag
NeoBundle 'rking/ag.vim'
" powerline
NeoBundle 'alpaca-tc/alpaca_powertabline'
NeoBundle 'Lokaltog/powerline', {'rtp' : 'powerline/bindings/vim'}
" emmet-vim C-y ,
NeoBundle 'mattn/emmet-vim'
" Dash
NeoBundle 'rizzatti/funcoo.vim'
NeoBundle 'rizzatti/dash.vim'
" php
NeoBundle 'eru/php.vim-html-enhanced'
" vim-over :OverCommandLine
NeoBundle 'osyo-manga/vim-over'
" Riv: reStructuredText in Vim
NeoBundle 'Rykka/riv.vim'
" open-browser
NeoBundle 'open-browser.vim'
" sphinx quickrun hook
NeoBundle 'daisuzu/quickrun-hook-sphinx'
" table mode
"NeoBundle 'dhruvasagar/vim-table-mode'

" quickrun config
let g:quickrun_config = {}
" reST preview
let g:quickrun_config['rst'] = {
            \ 'command': 'make',
            \ 'outputter': 'quickfix',
            \ 'hook/sphinx_open/enable' : 1,
            \ 'cmdopt': 'html',
            \ 'exec': '%c %o'
            \ }

" NeoBundle用設定
filetype plugin indent on
