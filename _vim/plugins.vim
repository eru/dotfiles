" Plugins

" Reference を vim から見れるようにする (ex. :Ref perldoc Encode)
Plug 'thinca/vim-ref'

" ちょーすごい補完
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  " require
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'Shougo/neco-syntax'
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

" Python
Plug 'zchee/deoplete-jedi'

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

" メソッド, 変数宣言一覧 (ex. :TagbarToggle)
Plug 'majutsushi/tagbar'

" phptagbar
if filereadable(expand($HOME.'/.zplug/bin/phpctags'))
  Plug 'vim-php/tagbar-phpctags.vim', { 'for': 'php' }
endif

" Vim にも Shell を！
Plug 'Shougo/deol.nvim'

" 一覧
if has('nvim')
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/denite.nvim'
endif

" 括弧閉じ忘れ防止
Plug 'cohama/lexima.vim'

" 括弧の色分け
Plug 'luochen1990/rainbow'

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
Plug 'mattn/emmet-vim', { 'for': ['html', 'php', 'smarty', 'vue'] }

" vim-over :OverCommandLine
Plug 'osyo-manga/vim-over'

" open-browser
Plug 'tyru/open-browser.vim'

" renamer
Plug 'qpkorr/vim-renamer'

" coffee-script
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }

" incremental search
Plug 'haya14busa/incsearch.vim'

" quickrun (ex. \r)
Plug 'Shougo/vimproc.vim', { 'do': 'make clean && make' }
Plug 'thinca/vim-quickrun'

" sphinx quickrun hook
Plug 'daisuzu/quickrun-hook-sphinx'

" git commit message editor
Plug 'rhysd/committia.vim'

" file tree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" display indent level
Plug 'nathanaelkane/vim-indent-guides'

" less
Plug 'groenewege/vim-less', { 'for': 'less' }

" syntax check
Plug 'scrooloose/syntastic'

" language-pack
Plug 'sheerun/vim-polyglot'

" indent-line
Plug 'Yggdroot/indentLine'

" template
Plug 'aperezdc/vim-template'

" tmux client
Plug 'tpope/vim-tbone'

" color schema
Plug 'lanox/lanox-vim-theme'

" editorconf
Plug 'editorconfig/editorconfig-vim'

" lsp
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" emoji
Plug 'fszymanski/deoplete-emoji'

" blueprint
Plug 'kylef/apiblueprint.vim'

" load plugin configs
for f in split(glob($HOME.'/dotfiles/_vim/plugins/*.vim'), '\n')
    exe 'source' f
endfor
