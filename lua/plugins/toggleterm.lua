return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 15,
      direction = "horizontal",
      open_mapping = [[<leader>t]],
      shade_terminals = true,
      persist_size = true,
      persist_mode = true,
      close_on_exit = false,
    })
  end,
}
