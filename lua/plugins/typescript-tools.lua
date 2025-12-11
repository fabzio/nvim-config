return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tsserver = false, -- desactiva tsserver
        vtsls = false, -- desactiva vtsls si prefieres typescript-tools
      },
    },
  },
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    ft = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
    opts = {
      -- opciones propias de typescript-tools
      settings = {
        tsserver_plugins = {},
      },
    },
  },
}
