-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Reduce time it takes neovim to launch menus
vim.opt.timeout = true
vim.opt.timeoutlen = 0

-- Set default tab size
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Make sure Nerd Fonts are used
vim.g.have_nerd_font = true

-- Disable spell checking
vim.opt.spell = false

-- Use pyright as python lsp
vim.g.lazyvim_python_lsp = "pyright"

-- Use intelephense as php lsp
vim.g.lazyvim_php_lsp = "intelephense"
