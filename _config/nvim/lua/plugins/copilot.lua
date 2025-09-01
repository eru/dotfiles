return {
  "zbirenbaum/copilot.lua",
  config = function()
    require("copilot").setup({
      panel = {
        enabled = false,
      },
      suggestion = {
        enabled = false,
      },
      copilot_node_command = "node",
      -- copilot_node_command = (function(t) for _,p in ipairs(t) do if vim.loop.fs_stat(p) then return p end end end)({
      --   "/opt/homebrew/bin/node",
      --   "/usr/local/bin/node",
      --   "node",
      -- })
    })
  end
}
