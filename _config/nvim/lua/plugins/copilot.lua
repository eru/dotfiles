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
      copilot_node_command = "/opt/homebrew/bin/node",
    })
  end
}
