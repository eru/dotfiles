return {
  "nat-418/boole.nvim",
  config = function()
    require("boole").setup({
      mappings = {
        increment = "+",
        decrement = "-",
      },
    })
  end
}
