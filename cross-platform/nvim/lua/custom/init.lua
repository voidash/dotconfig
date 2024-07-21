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

vim.g.doge_enable_mappings = 1
vim.cmd("syntax enable")
vim.cmd("filetype plugin on")

-- vim.api.nvim_create_autocmd("LspAttach", {
--   callback = function() 
--       if vim.lsp.inlay_hint then
--         vim.lsp.inlay_hint.enable(true, { 0 })
--       end
-- end
-- })
