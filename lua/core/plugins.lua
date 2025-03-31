
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.opt.runtimepath:prepend("~/.config/nvim/lua/lazy.nvim")

require('lazy').setup({

  require("plugins.colorize"), -- Colorize
  require("plugins.colortheme"), -- Color sheme
  require("plugins.illuminate"), -- illuminate
  require("plugins.bufferline"), -- bufferline
  require("plugins.terminal"), -- Terminal
  require("plugins.treesitter"), -- Treesitter
  require("plugins.autopairs"), -- Auto Pairs
  
  require("plugins.neotree"), -- File tree
  require("plugins.lualine"), -- Lua airline

  require("plugins.telescope"), -- Telescope
  require("plugins.mini"), -- Mini
  require("plugins.lsp"),
  require("plugins.cmp"),
  require("plugins.startmenu"),
  require("plugins.mason")
})
