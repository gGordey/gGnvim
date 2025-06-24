vim.g.mapleader = " "

vim.keymap.set("n", "m", function() vim.cmd("m +1") end, opt)
vim.keymap.set("n", "M", function() vim.cmd("m -2") end, opt)
vim.keymap.set("n", "<leader>rd", "<c-r>")

vim.keymap.set("n", "<leader>lp", vim.cmd.Ex)

