return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        astro = { "prettier" },
        typescript = { "prettier" },
        javascript = { "prettier" },
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        ruff = {
          mason = false,
        },
        clangd = {
          mason = false,
        },
        ltex = {
          lang = "en-GB",
          filetypes = {
            "bib",
            "gitcommit",
            "markdown",
            "org",
            "plaintex",
            "rst",
            "rnoweb",
            "tex",
            "pandoc",
            "quarto",
            "rmd",
            "context",
            "mail",
            "text",
          },
        },
      },
    },
  },
}
