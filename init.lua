
vim.opt.number = true
vim.opt.shiftwidth = 4
vim.opt.guifont = "FiraCode Nerd Font:h11"
local TEXTWIDTH = 100
vim.opt.colorcolumn = tostring(TEXTWIDTH+1)
vim.opt.textwidth = TEXTWIDTH

-- vim.api.nvim_create_autocmd({ "BufWritePost" }, {
--   callback = function()
--     require("lint").try_lint()
--   end,
-- })
