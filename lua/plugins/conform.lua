return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  keys = {
    {
      "<leader>f",
      function()
        require("conform").format({ async = true, timeout_ms = 500, lsp_format = "never" })
      end,
      desc = "[F]ormat buffer",
    },
  },
  opts = {
    notify_on_error = false,
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { "biome", "biome-organize-imports" },
      javascriptreact = { "biome", "biome-organize-imports" },
      typescript = { "biome", "biome-organize-imports" },
      typescriptreact = { "biome", "biome-organize-imports" },
      go = { "goimports", "gofmt" },
      rust = { "rustfmt" },
    },
  },
}
