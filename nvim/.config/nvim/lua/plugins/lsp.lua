vim.pack.add({ "https://github.com/mason-org/mason.nvim" })
vim.pack.add({ "https://github.com/folke/lazydev.nvim" })

require("mason").setup({})
require("lazydev").setup()

vim.lsp.enable("lua_ls")
