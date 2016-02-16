" Plugins

" Reference を vim から見れるようにする (ex. :Ref perldoc Encode)
Plug 'thinca/vim-ref'

" ちょーすごい補完
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
let g:neocomplete#enable_at_startup = 1

" XML 編集を便利にする
Plug 'sukima/xmledit', { 'for': 'xml' }

" 整形 (ex. :Align <keyword>)
Plug 'Align'
Plug 'h1mesuke/vim-alignta'

" テキストオブジェクトを便利にする
Plug 'surround.vim'

" ワード移動
Plug 'smartword'

" vim の正規表現を perl とかと同じにする (ex. :%S/(aa|bb|cc|)//g)
Plug 'eregex.vim'

" SQL 整形 (ex. :SQLUFormatter)
Plug 'SQLUtilities'

" メソッド, 変数宣言一覧 (ex. :TagbarToggle)
Plug 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>

" Vim にも Shell を！
Plug 'Shougo/vimproc.vim', { 'do': 'make clean && make' }
Plug 'Shougo/vimshell'

" 一覧
Plug 'Shougo/unite.vim'

" 括弧閉じ忘れ防止
Plug 'Townk/vim-autoclose'
Plug 'Highlight-UnMatched-Brackets'

" Gist
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'

" コメントアウト (ex. 範囲選択 -> \x)
Plug 'EnhCommentify.vim'

" Git client
Plug 'tpope/vim-fugitive'

" markdown
Plug 'tpope/vim-markdown', { 'for': 'markdown' }

" ag (ex. :Ag)
Plug 'rking/ag.vim'

" powerline
"Plug 'alpaca-tc/alpaca_powertabline'
Plug 'Lokaltog/powerline', { 'rtp' : 'powerline/bindings/vim' }

" emmet-vim (ex. C-y ,)
Plug 'mattn/emmet-vim', { 'for': ['html', 'php', 'tpl'] }

" Dash
"Plug 'rizzatti/funcoo.vim'
"Plug 'rizzatti/dash.vim'

" php with html
Plug 'eru/php.vim-html-enhanced', { 'for': 'php' }

" vim-over :OverCommandLine
Plug 'osyo-manga/vim-over'

" Riv: reStructuredText in Vim
Plug 'Rykka/riv.vim', { 'for': 'rst' }

" open-browser
Plug 'open-browser.vim'

" sphinx quickrun hook
Plug 'daisuzu/quickrun-hook-sphinx'

" table mode
"Plug 'dhruvasagar/vim-table-mode'

" renamer
Plug 'renamer.vim'

" coffee-script
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
au BufRead,BufNewFile,BufReadPre *.coffee set filetype=coffee

" javascript/es6
Plug 'othree/yajs.vim', { 'for': 'javascript' }

" incremental search
Plug 'haya14busa/incsearch.vim'
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)

" quickrun (ex. \r)
Plug 'thinca/vim-quickrun'
let g:quickrun_config = {}
" reST preview
let g:quickrun_config['rst'] = {
  \ 'command': 'make',
  \ 'outputter': 'quickfix',
  \ 'hook/sphinx_open/enable' : 1,
  \ 'cmdopt': 'html',
  \ 'exec': '%c %o'
  \ }

" git commit message editor
Plug 'rhysd/committia.vim'

" file tree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
nmap <F7> :NERDTreeToggle<CR>

" display indent level
Plug 'nathanaelkane/vim-indent-guides'
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'tagbar', 'unite']

" html5
Plug 'othree/html5.vim', { 'for': ['html', 'php', 'tpl'] }

" css3
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }

" less
Plug 'groenewege/vim-less', { 'for': 'less' }

" syntax check
Plug 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
