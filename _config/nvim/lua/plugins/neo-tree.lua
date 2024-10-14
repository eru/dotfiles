return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim",
  },
  config = function()
      vim.keymap.set("n", "<F7>", "<cmd>Neotree action=show<CR>", { noremap = true, silent = true })

    require("neo-tree").setup({
      filesystem = {
        hijack_netrw_behavior = "open_current",
      },
    })
  end,
}
