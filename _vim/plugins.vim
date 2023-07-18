" Plugins

" all in ide
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" テキストオブジェクトを便利にする
Plug 'tpope/vim-surround'

" メソッド, 変数宣言一覧 (ex. :Vista coc)
Plug 'liuchengxu/vista.vim'

" Vim にも Shell を！
Plug 'Shougo/deol.nvim'

" 一覧
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }

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

" status line
Plug 'itchyny/lightline.vim'

" emmet-vim (ex. C-y ,)
Plug 'mattn/emmet-vim', { 'for': ['html', 'php', 'smarty', 'vue'] }

" git commit message editor
Plug 'rhysd/committia.vim'

" git blame
Plug 'f-person/git-blame.nvim'

" file tree
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/fern-mapping-git.vim'
Plug 'lambdalisue/fern-mapping-project-top.vim'
Plug 'lambdalisue/fern-hijack.vim'
Plug 'yuki-yano/fern-preview.vim'

" language-pack
Plug 'sheerun/vim-polyglot'

" indent-line
Plug 'Yggdroot/indentLine'

" folding
Plug 'tweekmonster/braceless.vim'

" color schema
Plug 'lanox/lanox-vim-theme'

" editorconf
Plug 'editorconfig/editorconfig-vim'

" vim-abolish (ex. crc => camelCase, crs => snake_case)
Plug 'tpope/vim-abolish'

" open-browser
Plug 'tyru/open-browser.vim'
Plug 'tyru/open-browser-github.vim'

" previm (preview markdown on browser)
Plug 'previm/previm'

" context
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/nvim-treesitter-context'

" chatgpt
Plug 'mattn/vim-chatgpt'

" dap
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'mfussenegger/nvim-dap-python'
