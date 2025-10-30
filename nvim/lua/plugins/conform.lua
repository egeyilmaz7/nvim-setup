return {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    opts = {},
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          rust = { "rustfmt" },
          python = { "black" },
          javascript = { "prettier" },
          typescript = { "prettier" },
        },
        format_on_save = {
          lsp_fallback = true,
        },
      })
    end,
  }
  