return {
  "johmsalas/text-case.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },
  lazy = true,
  config = function()
    require("textcase").setup({})
    require("telescope").load_extension("textcase")
  end,
  keys = {
    "cr",
    { "cr", "<cmd>TextCaseOpenTelescopeLSPChange<CR>", mode = { "n", "x" }, desc = "Telescope" },
  },
  cmd = {
    "Subs",
    "TextCaseOpenTelescope",
    "TextCaseOpenTelescopeQuickChange",
    "TextCaseOpenTelescopeLSPChange",
    "TextCaseStartReplacingCommand",
  },
}
