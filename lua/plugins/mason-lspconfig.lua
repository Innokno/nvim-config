return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
  },

  config = function ()

    require("mason").setup({})
    require("mason-lspconfig").setup({

      ensure_installed = {
        "clangd",
        "pyright",
        "lua_ls",
      }

    })
  end
}
