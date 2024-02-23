local linters = require "lvim.lsp.null-ls.linters"
linters.setup({ { name = "eslint_d", args = { "max-len", "100" } } })
local formatters = require 'lvim.lsp.null-ls.formatters'
formatters.setup { { name = "prettier", args = { "--print-width", "100", "--use-tabs", "true" } } }
