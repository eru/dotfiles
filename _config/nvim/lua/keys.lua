-- KeyMap
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- いつでも, h j k l でカーソル移動
keymap("i", "<C-h>", "<Left>", opts)
keymap("i", "<C-j>", "<Down>", opts)
keymap("i", "<C-k>", "<Up>", opts)
keymap("i", "<C-l>", "<Right>", opts)

-- いつでも, C-a C-e で行頭/行末移動
keymap("", "<C-a>", "<Home>", opts)
keymap("", "<C-a>", "<Home>", opts)
keymap("", "<C-e>", "<End>", opts)
keymap("", "<C-e>", "<End>", opts)

-- 表示行単位で上下移動するように
keymap("n", "j", "gj", opts)
keymap("n", "k", "gk", opts)

-- 逆に普通の行単位で移動したい時のために逆の map も設定しておく
keymap("n", "gj", "j", opts)
keymap("n", "gk", "k", opts)

-- 行末までのヤンク
keymap("n", "Y", "y$", opts)

-- インクリメント
-- boole.nvimにまかせる
-- keymap("n", "+", "<C-a>", opts)
-- keymap("n", "-", "<C-x>", opts)

-- 画面送り
keymap("", "<Leader>j", "<C-f>", opts)
keymap("", "<Leader>k", "<C-b>", opts)

-- 矢印キーを無効にする
keymap("", "<Up>", "<Nop>", opts)
keymap("", "<Down>", "<Nop>", opts)
keymap("", "<Left>", "<Nop>", opts)
keymap("", "<Right>", "<Nop>", opts)
keymap("i", "<Up>", "<Nop>", opts)
keymap("i", "<Down>", "<Nop>", opts)
keymap("i", "<Left>", "<Nop>", opts)
keymap("i", "<Right>", "<Nop>", opts)

-- 保存
keymap("n", "<Leader>w", ":w<CR>", opts)
