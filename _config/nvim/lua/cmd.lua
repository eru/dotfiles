-- cmd
local autocmd = vim.api.nvim_create_autocmd

-- sudo w
-- cabbrev sudo w !sudo tee %

-- 保存時にsudo権限で無理やり保存
-- cnoremap w!! w !sudo tee > /dev/null %<CR> :e!<CR>

-- 保存時に行末スペース削除
autocmd("BufWritePre", {
  pattern = "*",
  command = ":%s/\\s\\+$//e",
})

-- 保存時にHardTab=>SoftTab変換
autocmd("BufWritePre", {
  pattern = "*",
  command = ":retab",
})

-- 指定文字コードで強制的にファイルを開く
vim.api.nvim_create_user_command("Cp932", "edit ++enc=cp932", {})
vim.api.nvim_create_user_command("Eucjp", "edit ++enc=euc-jp", {})
vim.api.nvim_create_user_command("Iso2022jp", "edit ++enc=iso-2022-jp", {})
vim.api.nvim_create_user_command("Utf8", "edit ++enc=utf-8", {})
vim.api.nvim_create_user_command("Jis", "Iso2022jp", {})
vim.api.nvim_create_user_command("Sjis", "Cp932", {})

-- :Ptで貼り付けモード
vim.api.nvim_create_user_command("Pt", "set paste!", {})
vim.api.nvim_create_user_command("NoPt", "set nopaste", {})
