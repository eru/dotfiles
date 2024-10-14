return {
  "loctvl842/monokai-pro.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("monokai-pro").setup({
      transparent_background = true,
      background_clear = {
        "toggleterm",
        "telescope",
        "neo-tree",
      },
    })

    vim.cmd([[colorscheme monokai-pro]])

    -- カーソル行にアンダーラインを追加
    vim.api.nvim_set_hl(0, "CursorLine", { underline=true, fg="none", bg="none" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { underline=true, fg="none", bg="none" })

    -- 行番号の色変更
    vim.api.nvim_set_hl(0, "LineNr", { fg="none", bg="none" })
  end,
}
