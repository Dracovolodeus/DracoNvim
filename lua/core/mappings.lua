
---------------------
------ Hotkeys ------
---------------------

-- Leader
vim.g.mapleader = " "

local set = vim.keymap.set
local default_opts = { noremap = true, silent = true }

-- Neo-Tree
set('n', '<leader>n', ':NeoTreeFocus<CR>', default_opts)
set('n', '<leader>t', ':Neotree toggle<CR>', default_opts)

-- Tabs
set('n', '<Tab>', ':BufferLineCycleNext<CR>', default_opts)
set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>', default_opts)
set('n', '<leader>x', ':BufferLinePickClose<CR>', default_opts)
set('n', '<leader>X', ':BufferLineCloseRight<CR>', default_opts)

-- Delete single character without copying into register
vim.keymap.set('n', 'x', '"_x', opts)

-- Stay in indent mode
vim.keymap.set('v', '<', "<gv", opts)
vim.keymap.set('v', '>', ">gv", opts)

