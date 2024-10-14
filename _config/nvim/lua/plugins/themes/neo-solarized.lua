return {
  "Tsuzat/NeoSolarized.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("NeoSolarized").setup({
      style = "dark",
      transparent = true,
    })

    vim.cmd([[colorscheme NeoSolarized]])

    -- カーソル行にアンダーラインを追加
    vim.api.nvim_set_hl(0, "CursorLine", { underline=true, fg="none", bg="none" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { underline=true, fg="none", bg="none" })

    -- 行番号の色変更
    vim.api.nvim_set_hl(0, "LineNr", { fg="none", bg="none" })
  end
}
