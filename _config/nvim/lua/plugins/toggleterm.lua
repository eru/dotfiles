return {
  "akinsho/toggleterm.nvim",
  config = function()
    vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true })

    require("toggleterm").setup({
      direction = "float",
    })
  end,
}
