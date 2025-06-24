local lspconfig = require('lspconfig')

-- Настройка LSP серверов
local servers = { 'ccls' } -- Добавьте нужные серверы

for _, server in ipairs(servers) do
    lspconfig[server].setup({
	capabilities = require('cmp_nvim_lsp').default_capabilities()
    })
end

-- Клавиши для LSP
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to definition' })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = 'Find references' })
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Hover info' })
