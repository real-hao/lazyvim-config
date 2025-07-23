-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp", "java", "python" },
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.b.autoformat = false
    vim.opt.expandtab = false
    vim.opt.tabstop = 8
    vim.opt.shiftwidth = 8
    vim.opt.softtabstop = 8
    vim.opt.smartindent = true
    vim.opt.autoindent = true
    vim.opt.wrap = false
    vim.opt.syntax = "on"
    vim.cmd("filetype plugin indent on")
  end,
})
