return {
  'nvim-treesitter/nvim-treesitter',
  config = function()
    require'nvim-treesitter.configs'.setup {
      ensure_installed = {
        "python", "rust", "c", "bash", "lua", "json", "css", "sql", "toml"
      },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
      },
    }
  end
}
