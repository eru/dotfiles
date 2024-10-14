return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "williamboman/mason.nvim",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    require("mason").setup({})

    local lspconfig = require("lspconfig")
    local mason_lspconfig = require("mason-lspconfig")

    mason_lspconfig.setup({})
    mason_lspconfig.setup_handlers({
      function(server_name)
        lspconfig[server_name].setup({
          capabilities = require("cmp_nvim_lsp").default_capabilities(),
        })
      end,
    })
  end,
}
