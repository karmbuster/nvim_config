-- change leader ey to spacebar
vim.g.mapleader = " "

-- source file
local keymap = vim.keymap
keymap.set("n", "<leader>so", "<cmd>so<cr>")
keymap.set("n", "<leader>e", "<cmd>Ex<cr>")

-- handle splits
keymap.set("n", "<leader>sh", "<cmd>split<cr>")
keymap.set("n", "<leader>sv", "<cmd>vsplit<cr>")
keymap.set("n", "<leader>sc", "<cmd>close<cr>")
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- when highlighting multiple lines in visual mode, can move entire lines up and down and spacing will update automatically
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep window centered with jumping up and down or when searching through searches
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste but dont put highlighted text to be replaced into the buffer
vim.keymap.set("x", "<leader>p", '"_dP')
