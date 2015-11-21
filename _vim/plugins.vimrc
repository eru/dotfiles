" Plugins

" Reference を vim から見れるようにする (ex. :Ref perldoc Encode)
NeoBundle 'thinca/vim-ref'

" ちょーすごい補完
NeoBundle 'Shougo/neocomplete.vim'
let g:neocomplete#enable_at_startup=1

" XML 編集を便利にする
NeoBundle 'sukima/xmledit'

" 整形 (ex. :Align <keyword>)
NeoBundle 'Align'
NeoBundle 'h1mesuke/vim-alignta'

" テキストオブジェクトを便利にする
NeoBundle 'surround.vim'

" ワード移動
NeoBundle 'smartword'

" vim の正規表現を perl とかと同じにする (ex. :%S/(aa|bb|cc|)//g)
NeoBundle 'eregex.vim'

" SQL 整形 (ex. :SQLUFormatter)
NeoBundle 'SQLUtilities'

" メソッド, 変数宣言一覧 (ex. :Tlist)
NeoBundle 'taglist.vim'
set tags=tags
let Tlist_Exit_OnlyWindow=1

" Vim にも Shell を！
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make',
\     'linux' : 'make',
\     'unix' : 'gmake',
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

" コメントアウト (ex. 範囲選択 -> \x)
NeoBundle 'EnhCommentify.vim'

" Git client
NeoBundle 'tpope/vim-fugitive'

" markdown
NeoBundle 'tpope/vim-markdown'

" ag (ex. :Ag)
NeoBundle 'rking/ag.vim'

" powerline
NeoBundle 'alpaca-tc/alpaca_powertabline'
NeoBundle 'Lokaltog/powerline', {'rtp' : 'powerline/bindings/vim'}

" emmet-vim (ex. C-y ,)
NeoBundle 'mattn/emmet-vim'

" Dash
"NeoBundle 'rizzatti/funcoo.vim'
"NeoBundle 'rizzatti/dash.vim'

" php with html
NeoBundle 'eru/php.vim-html-enhanced'

" vim-over :OverCommandLine
NeoBundle 'osyo-manga/vim-over'

" Riv: reStructuredText in Vim
" NeoBundle 'Rykka/riv.vim'

" open-browser
NeoBundle 'open-browser.vim'

" sphinx quickrun hook
NeoBundle 'daisuzu/quickrun-hook-sphinx'

" table mode
"NeoBundle 'dhruvasagar/vim-table-mode'

" renamer
NeoBundle 'renamer.vim'

" coffee-script
NeoBundle 'kchmck/vim-coffee-script'
au BufRead,BufNewFile,BufReadPre *.coffee set filetype=coffee

" javascript/es6
NeoBundle 'othree/yajs.vim'

" incremental search
NeoBundle 'haya14busa/incsearch.vim'
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)

" quickrun (ex. \r)
NeoBundle 'thinca/vim-quickrun'
let g:quickrun_config = {}
" reST preview
let g:quickrun_config['rst'] = {
  \ 'command': 'make',
  \ 'outputter': 'quickfix',
  \ 'hook/sphinx_open/enable' : 1,
  \ 'cmdopt': 'html',
  \ 'exec': '%c %o'
  \ }
