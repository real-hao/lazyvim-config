-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "gd", vim.lsp.buf.definition, opts)
map("n", "gD", vim.lsp.buf.declaration, opts)
vim.keymap.set("n", "<A-h>", ":bprev<CR>", opts)
vim.keymap.set("n", "<A-l>", ":bnext<CR>", opts)
vim.keymap.set("n", "<A-Right>", "<C-w>l", { desc = "Window right", silent = true })
vim.keymap.set("n", "<A-Left>", "<C-w>h", { desc = "Window left", silent = true })
vim.keymap.set("n", "<A-Up>", "<C-w>k", { desc = "Window up", silent = true })
vim.keymap.set("n", "<A-Down>", "<C-w>j", { desc = "Window down", silent = true })
vim.keymap.set("t", "<A-q>", [[<C-\><C-n>]], { desc = "Terminal: Normal mode", silent = true })
vim.keymap.set("n", "<leader>e", function()
  require("neo-tree.command").execute({ toggle = true })
end, { desc = "Toggle NeoTree" })
vim.keymap.set("n", "Q", ":q<CR>", { desc = "Quit buffer" })
vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file" })
