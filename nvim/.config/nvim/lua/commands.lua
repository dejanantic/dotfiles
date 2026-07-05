vim.api.nvim_create_user_command("NewNote", function(opts)
    local title = opts.args
    local date = os.date("%Y-%m-%d")
    local filename = date .. "-" .. title:gsub(" ", "-") .. ".md"
    local filepath = vim.fn.expand("~/notes/0 Inbox/") .. filename

    local frontmatter = {
        "---",
        "title: " .. title,
        "date: " .. date,
        "tags: []",
        'source: ""',
        "---",
        "",
        "# " .. title,
        "",
    }

    vim.cmd("edit " .. vim.fn.fnameescape(filepath))
    vim.api.nvim_buf_set_lines(0, 0, -1, false, frontmatter)
end, { nargs = 1 })

vim.keymap.set("n", "<leader>nn", ":NewNote ", { desc = "New note" })
