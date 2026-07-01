vim.pack.add({ "https://github.com/nvim-telescope/telescope.nvim" })
vim.pack.add({ "https://github.com/nvim-lua/plenary.nvim" })

local actions = require("telescope.actions")
local builtin = require("telescope.builtin")
require("telescope").setup({
    defaults = {
        layout_strategy = "vertical",
        layout_config = {
            preview_height = 0.7,
            vertical = {
                size = { width = "95%", height = "95%" },
            },
        },
        mappings = {
            i = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
            },
            n = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
            },
        },
    },
})

vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Buffers" })
vim.keymap.set("n", "<leader>nf", ":Telescope find_files cwd=~/notes<CR>", { desc = "Search notes" })
vim.keymap.set(
    "n",
    "<leader>ns",
    ':Telescope live_grep search_dirs={vim.fn.expand("~/notes")}<CR>',
    { desc = "Search in notes" }
)
