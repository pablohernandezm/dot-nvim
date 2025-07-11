require("config.lazy")

vim.lsp.enable("luals")
vim.lsp.enable("nil")
vim.lsp.enable("rust-analyzer")
vim.lsp.enable("tinymist")

-- Tabulation and indentation settings
vim.opt.expandtab = true -- Convert tabs into spaces
vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

vim.opt.wrap = false

-- Line numbering settings
vim.opt.number = true
vim.opt.relativenumber = true

-- Terminal colors
vim.opt.termguicolors = true

-- clipboard
vim.o.clipboard = "unnamedplus"

-- Spell checker
vim.opt.spelllang = "en,es"
vim.opt.spell = true
