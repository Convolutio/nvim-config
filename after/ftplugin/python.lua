local linters = require "lvim.lsp.null-ls.linters"
linters.setup { { command = "flake8", filetypes = { "python" } } }

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup { { name = "autopep8", filetypes = { "python" } },
    { name = "isort",    filetypes = { "python" } } }

lvim.builtin.which_key.mappings["lv"] = {
    "<cmd>lua require('swenv.api').pick_venv()<cr>", "Choose Python Env"
}
