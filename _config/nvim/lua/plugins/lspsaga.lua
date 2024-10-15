return {
  "nvimdev/lspsaga.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.keymap.set("n", "<leader>ac", "<cmd>Lspsaga code_action<CR>")
    vim.keymap.set("n", "gp", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
    vim.keymap.set("n", "gn", "<cmd>Lspsaga diagnostic_jump_next<CR>")
    vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>")
    vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename ++project<CR>")
    vim.keymap.set("n", "gd", "<cmd>Lspsaga goto_definition<CR>")
    vim.keymap.set("n", "<leader>gd", "<cmd>Lspsaga peek_definition<CR>")
    vim.keymap.set("n", "gy", "<cmd>Lspsaga goto_type_definition<CR>")
    vim.keymap.set("n", "<leader>gy", "<cmd>Lspsaga peek_type_definition<CR>")

    require("lspsaga").setup({
      symbol_in_winbar = {
        enable = false,
      },
      lightbulb = {
        enable = false,
      },
    })
  end,
}
