return {
  "f-person/git-blame.nvim",
  event = "VeryLazy",
  config = function()
    require("gitblame").setup({
      enabled = false,
      message_template = "<date> <author> <sha>",
      date_format = "%Y-%m-%d %H:%M:%S",
    })

    vim.api.nvim_create_user_command("Blame", "GitBlameEnable", {})
  end
}
