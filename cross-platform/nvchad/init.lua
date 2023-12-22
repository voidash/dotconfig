-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--
--
vim.filetype.add({extension = {wgsl = "wgsl"}})
vim.wo.relativenumber = true
vim.cmd("syntax enable")
