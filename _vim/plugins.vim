" Plugins

" Reference を vim から見れるようにする (ex. :Ref perldoc Encode)
Plug 'thinca/vim-ref'

" ちょーすごい補完
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

" ruby
Plug 'osyo-manga/vim-monster'

" XML 編集を便利にする
Plug 'sukima/xmledit', { 'for': 'xml' }

" 整形 (ex. :EasyAlign <keyword>)
Plug 'junegunn/vim-easy-align'

" split (gS, gJ)
Plug 'AndrewRadev/splitjoin.vim'

" テキストオブジェクトを便利にする
Plug 'tpope/vim-surround'

" ワード移動
Plug 'kana/vim-smartword'

" vim の正規表現を perl とかと同じにする (ex. :%S/(aa|bb|cc|)//g)
Plug 'othree/eregex.vim'

" SQL 整形 (ex. :SQLUFormatter)
"Plug 'SQLUtilities'

" メソッド, 変数宣言一覧 (ex. :TagbarToggle)
Plug 'majutsushi/tagbar'

" phptagbar
if filereadable(expand($HOME.'/.zplug/bin/phpctags'))
  Plug 'vim-php/tagbar-phpctags.vim', { 'for': 'php' }
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

" airline
Plug 'vim-airline/vim-airline'

" emmet-vim (ex. C-y ,)
Plug 'mattn/emmet-vim', { 'for': ['html', 'php', 'smarty'] }

" Dash
"Plug 'rizzatti/funcoo.vim'
"Plug 'rizzatti/dash.vim'

" php with html
Plug 'vim-scripts/php.vim-html-enhanced', { 'for': 'php' }

" vim-over :OverCommandLine
Plug 'osyo-manga/vim-over'

" Riv: reStructuredText in Vim
Plug 'Rykka/riv.vim', { 'for': 'rst' }

" open-browser
Plug 'tyru/open-browser.vim'

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
"Plug 'othree/javascript-libraries-syntax.vim', {'for': ['javascript', 'html']}
Plug 'othree/es.next.syntax.vim'

" incremental search
Plug 'haya14busa/incsearch.vim'

" quickrun (ex. \r)
Plug 'thinca/vim-quickrun'

" git commit message editor
Plug 'rhysd/committia.vim'

" file tree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" display indent level
Plug 'nathanaelkane/vim-indent-guides'

" html5
Plug 'othree/html5.vim', { 'for': ['html', 'php', 'smarty'] }

" css3
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'gorodinskiy/vim-coloresque', { 'for': ['css', 'html', 'php', 'smarty'] }

" less
Plug 'groenewege/vim-less', { 'for': 'less' }

" html tag match
Plug 'Valloric/MatchTagAlways', { 'for': ['html', 'php', 'smarty'] }

" syntax check
Plug 'scrooloose/syntastic'

" template
Plug 'aperezdc/vim-template'

" tmux client
Plug 'tpope/vim-tbone'

" color schema
Plug 'lanox/lanox-vim-theme'

" twig syntax
Plug 'lumiliet/vim-twig'

" editorconf
Plug 'editorconfig/editorconfig-vim'

" load plugin configs
for f in split(glob($HOME.'/dotfiles/_vim/plugins/*.vim'), '\n')
    exe 'source' f
endfor
