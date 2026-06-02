return {
  "jay-babu/mason-null-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "mason-org/mason.nvim",
    "nvimtools/none-ls.nvim",
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("mason").setup()
    require("mason-null-ls").setup({
      ensure_installed = {
        "css-lsp",
        "delve",
        "deno",
        "emmet-language-server",
        "eslint-lsp",
        "gopls",
        "html-lsp",
        "json-lsp",
        "nginx-language-server",
        "prettier",
        "python-lsp-server",
        "pyright",
        "ruff",
        "tailwindcss-language-server",
        "typescript-language-server",
        "vue-language-server",
        "yaml-language-server",
      },
      automatic_installation = true,
      handlers = {},
    })
    require("null-ls").setup({
      sources = {
      },
    })
  end,
  cmd = {
    "NullLsInstall",
  },
}
