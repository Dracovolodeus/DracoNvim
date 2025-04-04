
--------------------
-- Common options --
--------------------

-- Basic
vim.opt.cursorline = true
vim.opt.showcmd = true
vim.opt.wrap = true
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.swapfile = false
vim.opt.encoding = 'utf-8'
vim.opt.fileformat = "unix"
vim.opt.guifont = "JetBrainsMono Nerd Font"
vim.g.neovide_font_ligatures = true
vim.opt.scrolloff = 8

-- Mouse
vim.opt.mouse = "a"
vim.opt.mousefocus = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Line Numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Fillchars
vim.opt.fillchars = {
  vert = "│",
  fold = "⠀",
  eob = " ",
  msgsep = "‾",
  foldopen = "▾",
  foldsep = "│",
  foldclose = "▸"
}

-- Basic settings
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.cindent = true
vim.opt.smarttab = true

-- Python
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.opt.shiftwidth = 4
    vim.opt.tabstop = 4
    vim.opt.softtabstop = 4

    -- Creating a command :Format for formatting (isport + black)
    vim.api.nvim_create_user_command('Cformat', function()
      local file = vim.fn.expand('%:p')
      if file == '' then
        vim.notify('Файл не сохранён!', vim.log.levels.ERROR)
        return
      end
      vim.cmd('w')
      vim.fn.system('black ' .. vim.fn.shellescape(file))
      vim.fn.system('isort ' .. vim.fn.shellescape(file))
      vim.cmd('e!')
      vim.notify('Форматирование isort + black выполнено!', vim.log.levels.INFO)
    end, {})

  end,
})

-- Nix, Json, Lua
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "nix", "json", "jsonc", "lua" },
  callback = function()
    vim.opt.shiftwidth = 2
    vim.opt.tabstop = 2
    vim.opt.softtabstop = 2
  end,
})

-- Highlighting yanked text for a fraction of a second.
vim.api.nvim_exec([[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=300}
augroup end
]], false)

-- AutoCommands
vim.cmd([[
filetype indent plugin on
syntax enable
]])

