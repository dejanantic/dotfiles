vim.pack.add({
    { src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main" },
})

require("nvim-treesitter").setup({})
require("nvim-treesitter").install({
    "markdown",
    "markdown_inline",
    "lua",
    "bash",
    "javascript",
    "typescript",
    "tsx",
    "java",
    "kotlin",
    "xml",
    "sql",
    "html",
    "css",
    "json",
    "yaml",
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function()
        local filetype = vim.bo.filetype
        if filetype and filetype ~= "" then
            pcall(vim.treesitter.start)
        end
    end,
})
