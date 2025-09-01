return {
  "iguanacucumber/magazine.nvim",
  name = "nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/vim-vsnip",
    "hrsh7th/cmp-vsnip",
    "onsails/lspkind.nvim",
    "neovim/nvim-lspconfig",
    -- "zbirenbaum/copilot-cmp",
    "jvune0/copilot-cmp",
    "windwp/nvim-autopairs",
  },
  config = function()
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    local lspkind = require("lspkind")
    local cmp = require("cmp")

    cmp.event:on(
      "confirm_done",
      cmp_autopairs.on_confirm_done
    )

    cmp.setup({
      snippet = {
        expand = function(args)
          vim.fn["vsnip#anonymous"](args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "copilot" },
        { name = "vsnip" },
      }, {
        { name = "buffer" },
      }),
      formatting = {
        format = lspkind.cmp_format({
          mode = "symbol",
          maxwidth = 50,
          ellipsis_char = "...",
          show_labelDetails = true,
        })
      },
    })

    cmp.setup.cmdline({ "/", "?" }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = "buffer" }
      }
    })

    cmp.setup.cmdline(":", {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = "path" }
      }, {
        { name = "cmdline" }
      }),
      matching = { disallow_symbol_nonprefix_matching = false }
    })

    vim.lsp.config("*", {
      capabilities = require("cmp_nvim_lsp").default_capabilities()
    })
  end,
}
