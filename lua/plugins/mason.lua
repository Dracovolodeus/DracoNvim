return {
  "williamboman/mason.nvim",
  config = function()
    require("mason").setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      },
      ensure_installed = { "pyright", "lua-language-server", "rust_analyzer", "rnix-lsp", "black", "isort" },
    })
  end
}


