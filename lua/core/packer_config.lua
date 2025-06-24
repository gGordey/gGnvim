vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	-- or                            , branch = '0.1.x',
	requires = { {'nvim-lua/plenary.nvim'} }
    }
    
    use 'rktjmp/lush.nvim'
    use 'lushtheme'

    use 'neovim/nvim-lspconfig'           -- Конфигурация LSP
    use 'hrsh7th/cmp-nvim-lsp'            -- Источник LSP для автодополнения
    use 'hrsh7th/cmp-buffer'              -- Дополнение из буфера
    use 'hrsh7th/cmp-path'                -- Дополнение путей
    use 'hrsh7th/nvim-cmp'                -- Движок автодополнения

    -- Сниппеты (опционально)
    use 'L3MON4D3/LuaSnip'                -- Движок сниппетов
    use 'saadparwaiz1/cmp_luasnip'        -- Источник сниппетов для cmp

    -- Иконки в автодополнении (опционально)
    use 'onsails/lspkind.nvim'
end)
