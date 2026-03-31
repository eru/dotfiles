return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "mason-org/mason.nvim",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    require("mason").setup({})

    local lspconfig = require("lspconfig")
    local mason_lspconfig = require("mason-lspconfig")

    local mason_packages = vim.fn.stdpath("data") .. "/mason/packages"
    vim.lsp.config("vue_ls", {
      init_options = {
        typescript = {
          tsdk = mason_packages .. "/vue-language-server/node_modules/typescript/lib",
        },
      },
    })

    mason_lspconfig.setup({})
  end,
}
