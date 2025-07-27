vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 10

vim.opt.signcolumn = "yes"
vim.opt.swapfile = false
vim.opt.backup = false

require ("core.mappings")
require ("core.packer_config")
