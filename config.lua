-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

vim.opt.number = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.guifont = "FiraCode Nerd Font:h11"
local TEXTWIDTH = 100
vim.opt.colorcolumn = tostring(TEXTWIDTH + 1)
vim.opt.textwidth = TEXTWIDTH

lvim.plugins = {
    {
        "catppuccin/nvim",
        config = function()
            require("catppuccin").setup({
                background = {
                    dark = "macchiato",
                    light = "latte"
                },
                term_colors = true,
                integrations = {
                    cmp = true,
                    treesitter = true
                }
            })
        end
    },
    {
        "iamcco/markdown-preview.nvim",
        build = "cd app && npm install",
        ft = "markdown",
        config = function()
            vim.g.mkdp_auto_start = 1
        end,
    },
    {
        "sindrets/diffview.nvim",
        event = "BufRead",
    },
    {
        "AckslD/swenv.nvim"
    },
    {
        "andweeb/presence.nvim",
        config = function()
            require("presence").setup({})
        end
    }
}


lvim.colorscheme = "catppuccin"

vim.cmd("setlocal tabstop=4 shiftwidth=4")
lvim.format_on_save.enabled = true
lvim.format_on_save.pattern = { "*.lua", "*.py" }
