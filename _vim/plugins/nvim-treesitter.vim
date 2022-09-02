" nvim-treesitter {{{
lua <<EOF
require'nvim-treesitter.configs'.setup {
  auto_install = true,
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
  },
}
EOF
" }}}
