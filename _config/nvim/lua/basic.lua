-- 基本設定

-- 文字コードと改行コード
vim.opt.encoding = 'utf-8'
vim.opt.fileencodings = 'ucs-bom,utf-8,iso-2022-jp,euc-jp,sjis,cp932,cp20932'
vim.opt.fileformats = 'unix,dos,mac'

-- 行番号表示
vim.opt.number = true

-- カーソル行をハイライト
vim.opt.cursorline = true

-- Tab幅設定
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smarttab = true

-- softtab使う
vim.opt.expandtab = true

-- 自動インデント
vim.opt.autoindent = true

-- 折りたたみ
vim.opt.foldmethod = 'indent'

-- ハイライト
vim.opt.syntax = 'on'
vim.opt.hlsearch = true
vim.opt.showmatch = true
vim.opt.matchtime = 1

-- スクロールした時にいい感じに
vim.opt.scrolloff = 15

-- バックアップとらない
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- 変更されたら自動読み込み
vim.opt.autoread = true

-- 編集中でも開けるようにする
vim.opt.hidden = true

-- バックスペースでがしがし消せる
vim.opt.backspace = 'indent,eol,start'

-- 自動改行しない
vim.opt.textwidth = 0

-- 自動整形でマルチバイト文字を考慮
vim.opt.formatoptions = 'lmoq'

-- 一行が長くても表示させる
vim.opt.display = 'lastline'

-- ステータス表示関連
vim.opt.ruler = true
vim.opt.showcmd = true
vim.opt.showmode = true
vim.opt.laststatus = 2
vim.opt.cmdheight = 2

-- mouse
vim.opt.mouse = ''

-- CursorHold
vim.opt.updatetime = 300

-- Press ENTER回避
vim.opt.shortmess = 'c'

-- クリップボード使ってコピペ
vim.opt.clipboard = 'unnamedplus'
