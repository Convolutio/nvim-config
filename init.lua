local lazy = {}

function lazy.install(path)
    if not vim.loop.fs_stat(path) then
	vim.fn.system({
	    "git",
	    "clone",
	    "--filter=blob:none",
	    "https://github.com/folke/lazy.nvim.git",
	    "--branch=stable", -- latest stable release
	    path,
	})
    end
end

function lazy.setup(plugins)
    lazy.install(lazy.path)

    vim.opt.rtp:prepend(lazy.path)

    -- lua options could be added
    require("lazy").setup(plugins, lazy.opts)
end


-- custom prioritary options configuration
vim.opt.number = true
vim.opt.shiftwidth = 4
vim.opt.guifont = "FiraCode Nerd Font:h11"
local TEXTWIDTH = 100
vim.opt.colorcolumn = tostring(TEXTWIDTH+1)
vim.opt.textwidth = TEXTWIDTH

-- setup
lazy.path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
lazy.opts = {}

-- import and config plugins
lazy.setup({
    --
    -- list of plugins
    --
    { "folke/neodev.nvim" },
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/nvim-cmp" },
    {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" }
    },
    -- { "sindrets/diffview.nvim" },
    -- { "iamcco/markdown-preview.nvim" },
    { "andweeb/presence.nvim" },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 }
})
vim.opt.termguicolors = true
vim.cmd.colorscheme("catppuccin")
require("lualine").setup()
require("lspconfig").clangd.setup{}
require("lspconfig").texlab.setup{}
require("presence").setup()
