vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 10

require ("core.mappings")
require ("core.packer_config")

vim.cmd("colorscheme lushtheme")

vim.api.nvim_create_autocmd('FileType', {
    pattern = { '*' },
    callback = function()
	vim.lsp.start({
	    name = 'lsp-server',
	    cmd = { 'ccls' },
	    root_dir = vim.fn.getcwd()
	})
    end
})
