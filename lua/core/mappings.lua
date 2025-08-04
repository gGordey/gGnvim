vim.g.mapleader = " "

vim.keymap.set("n", "m", function() vim.cmd("m +1") end, opt)
vim.keymap.set("n", "M", function() vim.cmd("m -2") end, opt)
vim.keymap.set("v", "m", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "M", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<leader>rd", "<c-r>")
vim.keymap.set("n", "<leader>p", "\"_dP")
vim.keymap.set("v", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

vim.keymap.set("n", "<leader>s", function() vim.cmd("e ~/.local/share/nvim/SCRATCH") end, opt)

vim.keymap.set("n", "<leader>lp", vim.cmd.Ex)

