" Plugins

" Reference を vim から見れるようにする (ex. :Ref perldoc Encode)
Plug 'thinca/vim-ref'

" ちょーすごい補完
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory=$HOME . '/.vim/plugged/neosnippet-snippets/snippets'
let g:neocomplete#sources#dictionary#dictionaries = {'_': '', 'php': $HOME . '/dotfiles/_vim/dict/php.dict'}
let g:neocomplete#enable_at_startup = 1
imap <C-@> <Plug>(neosnippet_expand_or_jump)
smap <C-@> <Plug>(neosnippet_expand_or_jump)
xmap <C-@> <Plug>(neosnippet_expand_target)
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
if has('conceal')
    set conceallevel=2 concealcursor=niv
endif

" ruby
Plug 'osyo-manga/vim-monster'
let g:neocomplete#sources#omni#input_patterns = {
\   'ruby' : '[^. *\t]\.\w*\|\h\w*::',
\}

" XML 編集を便利にする
Plug 'sukima/xmledit', { 'for': 'xml' }

" 整形 (ex. :EasyAlign <keyword>)
Plug 'junegunn/vim-easy-align'
cabbrev Align EasyAlign

" split (gS, gJ)
Plug 'AndrewRadev/splitjoin.vim'

" テキストオブジェクトを便利にする
Plug 'tpope/vim-surround'

" ワード移動
Plug 'kana/vim-smartword'

" vim の正規表現を perl とかと同じにする (ex. :%S/(aa|bb|cc|)//g)
Plug 'othree/eregex.vim'
let g:eregex_default_enable = 0 " 置換だけ使えればいいので検索機能などは無効にしておく

" SQL 整形 (ex. :SQLUFormatter)
"Plug 'SQLUtilities'

" メソッド, 変数宣言一覧 (ex. :TagbarToggle)
Plug 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>

" phptagbar
if filereadable(expand($HOME.'/.zplug/bin/phpctags'))
  Plug 'vim-php/tagbar-phpctags.vim', { 'for': 'php' }
  let g:tagbar_phpctags_bin=$HOME.'/.zplug/bin/phpctags'
endif

" Vim にも Shell を！
Plug 'Shougo/vimproc.vim', { 'do': 'make clean && make' }
Plug 'Shougo/vimshell'

" 一覧
Plug 'Shougo/unite.vim'

" 括弧閉じ忘れ防止
Plug 'cohama/lexima.vim'

" Gist
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'

" コメントアウト (ex. 範囲選択 -> gcc)
Plug 'tyru/caw.vim'

" Git client
Plug 'tpope/vim-fugitive'

" markdown
Plug 'tpope/vim-markdown', { 'for': 'markdown' }

" ag (ex. :Ag)
Plug 'rking/ag.vim'

" powerline
Plug 'Lokaltog/powerline', { 'rtp' : 'powerline/bindings/vim' }

" emmet-vim (ex. C-y ,)
Plug 'mattn/emmet-vim', { 'for': ['html', 'php', 'smarty'] }

" Dash
"Plug 'rizzatti/funcoo.vim'
"Plug 'rizzatti/dash.vim'

" php with html
Plug 'php.vim-html-enhanced', { 'for': 'php' }

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
Plug 'qpkorr/vim-renamer'

" coffee-script
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }

" javascript/es6/jsx
Plug 'othree/yajs.vim'
Plug 'maxmellon/vim-jsx-pretty'

" typescript
Plug 'leafgarland/typescript-vim', {'for': ['typescript']}

" optional
Plug 'othree/javascript-libraries-syntax.vim', {'for': ['javascript', 'html']}
Plug 'othree/es.next.syntax.vim'

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
Plug 'othree/html5.vim', { 'for': ['html', 'php', 'smarty'] }

" css3
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'gorodinskiy/vim-coloresque', { 'for': ['css', 'html', 'php', 'smarty'] }

" less
Plug 'groenewege/vim-less', { 'for': 'less' }

" html tag match
Plug 'Valloric/MatchTagAlways', { 'for': ['html', 'php', 'smarty'] }
let g:mta_filetypes = {
  \ 'html' : 1,
  \ 'xhtml' : 1,
  \ 'xml' : 1,
  \ 'jinja' : 1,
  \ 'php' : 1,
  \ 'smarty' : 1,
  \ }
nnoremap <leader>% :MtaJumpToOtherTag<cr>

" syntax check
Plug 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" template
Plug 'aperezdc/vim-template'
let g:username = 'Kazuki Hashimoto'
let g:email = 'eru.tndl@gmail.com'

" tmux client
Plug 'tpope/vim-tbone'

" color schema
Plug 'lanox/lanox-vim-theme'
