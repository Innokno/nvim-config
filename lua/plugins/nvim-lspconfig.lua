return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")

    lspconfig.clangd.setup({})
    lspconfig.pyright.setup({})
    lspconfig.lua_ls.setup({})  

  end
}
