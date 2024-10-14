return {
  "hedyhli/outline.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "neovim/nvim-lspconfig",
  },
  lazy = true,
  config = function()
    vim.keymap.set("n", "<F8>", "<cmd>Outline!<CR>", { desc = "Toggle Outline" })

    require("outline").setup({
      outline_window = {
        width = 40,
        relative_width = false,
      },
      guides = {
        enabled = false,
      },
      preview_window = {
        auto_preview = true,
        open_hover_on_preview = true,
      },
    })
  end,
  keys = {
    "<F8>",
  },
  cmd = {
    "Outline",
  },
}
