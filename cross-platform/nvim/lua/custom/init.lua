-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--
--
vim.g.mapleader = " "
vim.filetype.add({extension = {wgsl = "wgsl"}})
vim.wo.relativenumber = true
vim.o.autoread = true
vim.o.title = true
vim.o.laststatus = 0

vim.g.doge_enable_mappings = 1
vim.cmd("syntax enable")
vim.cmd("filetype plugin on")
vim.cmd("set nocompatible")

-- vim.api.nvim_create_autocmd("LspAttach", {
--   callback = function() 
--       if vim.lsp.inlay_hint then
--         vim.lsp.inlay_hint.enable(true, { 0 })
--       end
-- end
-- })
---- Comments: italic font
vim.cmd [[highlight Comment cterm=italic gui=italic]]

-- Variable names: bold font
vim.cmd [[highlight Identifier cterm=italic gui=italic]]

-- Strings: underline
vim.cmd [[highlight String cterm=underline gui=underline]]

-- Function names: bold and italic
vim.cmd [[highlight Function cterm=italic gui=italic]]

