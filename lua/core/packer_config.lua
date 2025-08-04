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
    use '~/.config/nvim/lushtheme'

    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/nvim-cmp'

    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip' 

	use 'onsails/lspkind.nvim'

	use 'nvim-treesitter/nvim-treesitter'
	use {
		"startup-nvim/startup.nvim",
		requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", "nvim-telescope/telescope-file-browser.nvim"},
		config = function()
			require"startup".setup(require"plugins.startup")
		end
	}
	use 'nvim-lua/plenary.nvim'
	use 'ThePrimeagen/harpoon'

	use 'mbbill/undotree'
	use {
		'swaits/scratch.nvim',
		config = function()
			require("scratch").setup()
		end
	}
	use {
		'brenton-leighton/multiple-cursors.nvim',
		tag = '*', -- Используем последнюю версию
		config = function()
			local mc = require('multiple-cursors')
			mc.setup({}) -- Пустые опции, как в оригинале

			-- Установка key mappings
			vim.keymap.set({'n', 'x'}, '<C-j>', '<Cmd>MultipleCursorsAddDown<CR>', {desc = 'Add cursor and move down'})
			vim.keymap.set({'n', 'x'}, '<C-k>', '<Cmd>MultipleCursorsAddUp<CR>', {desc = 'Add cursor and move up'})

			vim.keymap.set({'n', 'i', 'x'}, '<C-Up>', '<Cmd>MultipleCursorsAddUp<CR>', {desc = 'Add cursor and move up'})
			vim.keymap.set({'n', 'i', 'x'}, '<C-Down>', '<Cmd>MultipleCursorsAddDown<CR>', {desc = 'Add cursor and move down'})

			vim.keymap.set({'n', 'i'}, '<C-LeftMouse>', '<Cmd>MultipleCursorsMouseAddDelete<CR>', {desc = 'Add or remove cursor'})

			vim.keymap.set('x', '<Leader>m', '<Cmd>MultipleCursorsAddVisualArea<CR>', {desc = 'Add cursors to the lines of the visual area'})

			vim.keymap.set({'n', 'x'}, '<Leader>a', '<Cmd>MultipleCursorsAddMatches<CR>', {desc = 'Add cursors to cword'})
			vim.keymap.set({'n', 'x'}, '<Leader>A', '<Cmd>MultipleCursorsAddMatchesV<CR>', {desc = 'Add cursors to cword in previous area'})

			vim.keymap.set({'n', 'x'}, '<Leader>d', '<Cmd>MultipleCursorsAddJumpNextMatch<CR>', {desc = 'Add cursor and jump to next cword'})
			vim.keymap.set({'n', 'x'}, '<Leader>D', '<Cmd>MultipleCursorsJumpNextMatch<CR>', {desc = 'Jump to next cword'})

			vim.keymap.set({'n', 'x'}, '<Leader>l', '<Cmd>MultipleCursorsLock<CR>', {desc = 'Lock virtual cursors'})
		end
	}
	use 'nvimtools/hydra.nvim'
end)
