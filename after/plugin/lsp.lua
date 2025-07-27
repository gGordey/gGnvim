local lspconfig = require('lspconfig')

local util = require 'lspconfig.util'

vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'c', 'h', 'cpp', 'hpp' },
    callback = function()
	vim.lsp.start({
	    name = 'lsp-server',
	    cmd = { 'clangd' },
	    root_dir = vim.fn.getcwd()
	})
    end
})
vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'zig' },
    callback = function()
	vim.lsp.start({
	    name = 'lsp-server',
	    cmd = { 'zls' },
	    root_dir = vim.fn.getcwd()
	})
    end
})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to definition' })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = 'Find references' })
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Hover info' })
