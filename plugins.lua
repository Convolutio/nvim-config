local plugins = {
    { "andweeb/presence.nvim", lazy = false },

    -- add installed lsps --
    { "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },
    { "williamboman/mason.nvim",
        opts = {
            -- list below the LSPs/linters/formatters
            -- which have to be installed with Mason
            ensure_installed = {
                "lua-language-server",
                "ltex-ls"
            }
        }
    },
    -- add linting --
    --- { "mfussenegger/nvim-lint",
    ---     config = function()
    ---         require "custom.configs.nvimlint"
    ---     end,
    ---     lazy = false
    --- }
}

return plugins
