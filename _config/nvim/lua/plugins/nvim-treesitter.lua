return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
        auto_install = true,
        highlight = {
          enable = true
        },
        indent = {
          enable = true
        },
      })

    -- Patch for Neovim 0.12.0 compatibility:
    -- match[capture_id] can return a non-TSNode table instead of a TSNode,
    -- causing node:range() to fail. Override directives with nil-safe versions.
    local non_filetype_aliases = {
      ex = "elixir", pl = "perl", sh = "bash", uxn = "uxntal", ts = "typescript",
    }
    local function get_lang(alias)
      return vim.filetype.match({ filename = "a." .. alias })
        or non_filetype_aliases[alias]
        or alias
    end
    local query = require("vim.treesitter.query")
    local patch_opts = { force = true, all = false }
    query.add_directive("set-lang-from-info-string!", function(match, _, bufnr, pred, metadata)
      local node = match[pred[2]]
      if not node or type(node) ~= "userdata" then return end
      local text = vim.treesitter.get_node_text(node, bufnr)
      if not text then return end
      metadata["injection.language"] = get_lang(text:lower())
    end, patch_opts)
    query.add_directive("set-lang-from-mimetype!", function(match, _, bufnr, pred, metadata)
      local node = match[pred[2]]
      if not node or type(node) ~= "userdata" then return end
      local text = vim.treesitter.get_node_text(node, bufnr)
      if not text then return end
      local html_types = {
        ["importmap"] = "json", ["module"] = "javascript",
        ["application/ecmascript"] = "javascript", ["text/ecmascript"] = "javascript",
      }
      local configured = html_types[text]
      if configured then
        metadata["injection.language"] = configured
      else
        local parts = vim.split(text, "/", {})
        metadata["injection.language"] = parts[#parts]
      end
    end, patch_opts)
    query.add_directive("downcase!", function(match, _, bufnr, pred, metadata)
      local id = pred[2]
      local node = match[id]
      if not node or type(node) ~= "userdata" then return end
      local text = vim.treesitter.get_node_text(node, bufnr, { metadata = metadata[id] }) or ""
      if not metadata[id] then metadata[id] = {} end
      metadata[id].text = string.lower(text)
    end, patch_opts)
  end
}
