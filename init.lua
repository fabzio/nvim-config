-- bootstrap lazy.nvim, LazyVim and your plugins

require("config.lazy")
require("catppuccin").setup({
  flavour = "mocha",
  transparent_background = true
})
vim.cmd.colorscheme "catppuccin"
