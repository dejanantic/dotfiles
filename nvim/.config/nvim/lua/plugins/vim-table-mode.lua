vim.pack.add({ "https://github.com/dhruvasagar/vim-table-mode" })

vim.g.table_mode_corner = "|"

require("which-key").add({
    { "<leader>tm", desc = "Toggle table mode" },
    { "<leader>tt", desc = "Tableize" },
})
