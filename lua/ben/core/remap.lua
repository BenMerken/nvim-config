local keymap = vim.keymap

vim.g.mapleader = " "
-- Format all, and return cursor to last position before formatting
keymap.set("n", "<leader>fa", "ggVG=<c-o><c-0>")
-- Go to file explorer
keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move highlighted text around
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '>+2<CR>gv=gv")

-- Keep cursor in middle of the screen during half-page jumps and searches
keymap.set("n", "<C-i>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Keep previous pasted buffer
keymap.set("n", "<leader>p", "\"_dP")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
