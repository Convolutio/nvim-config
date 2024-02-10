local linters = require "lvim.lsp.null-ls.linters"
linters.setup { { command = "flake8", filetypes = { "python" }, args = { "--max-line-length", "99" } } }

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup { { name = "autopep8" }, { name = "isort" } }

lvim.builtin.which_key.mappings["C"] = {
    name = "Python",
    c = { "<cmd>lua require('swenv.api').pick_venv()<cr>", "Choose Env" },
}
