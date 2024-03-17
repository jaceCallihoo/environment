vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

-- This one was indenting my comments wrong
-- vim.opt.smartindent = true

vim.opt.wrap = false

-- Undo stuff
vim.opt.swapfile = false
vim.opt.backup = false
-- vim.opt.undodir = os.getenv("HOME") .. "put undo dir here TODO"
vim.opt.undofile = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8 -- wont have less than 8 characters at bottom of screen unless at end of a file

-- clipboard
vim.opt.clipboard = 'unnamedplus'

-- Should save last position in text file (I don't think that this is working)
--[[
cursor_location = {
  desc = 'Open file at the last position it was edited earlier',
  event = 'BufReadPost',
  pattern = '*',
  command = 'silent! normal! g`"zv',
}
--]]

-- TJ video
-- require'lspconfig'.rust_analyzer.setup{
--   on_attach = function() print("hello from rust setup") end,
-- }
vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, {buffer=0})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer=0})
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, {buffer=0})
vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", {buffer=0})


