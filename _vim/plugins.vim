" Plugins

" ちょーすごい補完
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Python
Plug 'zchee/deoplete-jedi'

" テキストオブジェクトを便利にする
Plug 'tpope/vim-surround'

" メソッド, 変数宣言一覧 (ex. :TagbarToggle)
Plug 'majutsushi/tagbar'

" Vim にも Shell を！
Plug 'Shougo/deol.nvim'

" 一覧
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }

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

" ag (ex. :Ack)
Plug 'mileszs/ack.vim'

" airline
Plug 'vim-airline/vim-airline'

" emmet-vim (ex. C-y ,)
Plug 'mattn/emmet-vim', { 'for': ['html', 'php', 'smarty', 'vue'] }

" quickrun (ex. \r)
Plug 'Shougo/vimproc.vim', { 'do': 'make clean && make' }
Plug 'thinca/vim-quickrun'

" git commit message editor
Plug 'rhysd/committia.vim'

" file tree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" syntax check
Plug 'dense-analysis/ale'

" language-pack
Plug 'sheerun/vim-polyglot'

" indent-line
Plug 'Yggdroot/indentLine'

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

" vim-abolish (ex. crc => camelCase, crs => snake_case)
Plug 'tpope/vim-abolish'

" load plugin configs
for f in split(glob($HOME.'/dotfiles/_vim/plugins/*.vim'), '\n')
    exe 'source' f
endfor
