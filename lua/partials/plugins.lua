return {
  {
    "neovim/nvim-lspconfig",
    config = function()
    require("partials/lsp")
    end,
    event = {"BufEnter"}
  },
  {
    "EdenEast/nightfox.nvim"
  },
}

