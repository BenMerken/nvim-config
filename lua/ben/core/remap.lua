vim.g.mapleader = " "
-- Format all, and return cursor to last position before formatting
vim.keymap.set("n", "<leader>fa", "ggVG=<c-o><c-0>")
-- Go to file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move highlighted text around
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>+2<CR>gv=gv")

-- Keep cursor in middle of the screen during half-page jumps and searches
vim.keymap.set("n", "<C-j>", "<C-d>zz")
vim.keymap.set("n", "<C-k>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Keep previous pasted buffer
vim.keymap.set("n", "<leader>p", "\"_dP")
