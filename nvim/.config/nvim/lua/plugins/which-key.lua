vim.pack.add({ "https://github.com/folke/which-key.nvim" })

require("which-key").setup({
    preset = "helix",
})

require("which-key").add({
    { "<leader>m", group = "Markdown" },
    { "<leader>n", group = "Notes" },
    { "<leader>f", group = "Find" },
    { "<leader>t", group = "Table" },
})
