-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = vim.keymap.set

-- Toggle con <leader>t
map("n", "<leader>t", function()
  require("toggleterm").toggle(1)
end, { desc = "Toggle terminal" })

-- Keymaps para MODO TERMINAL
vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "term://*",
  callback = function()
    local opts = { buffer = 0 }
    -- Esc para salir a normal-mode (NO cierra la terminal)
    vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
    vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)

    -- Navegación entre ventanas
    vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-w>h]], opts)
    vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-w>j]], opts)
    vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>k]], opts)
    vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-w>l]], opts)
  end,
})
