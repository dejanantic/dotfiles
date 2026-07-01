vim.pack.add({ "https://github.com/MeanderingProgrammer/render-markdown.nvim" })

require("render-markdown").setup({
    heading = {
        icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
        sign = false,
    },
    code = {
        sign = false,
        style = "full",
        width = "block",
        border = "thin",
    },
    checkbox = {
        unchecked = { icon = "󰄱 " },
        checked = { icon = "󰱒 " },
    },
})

vim.keymap.set("n", "<leader>mt", function()
    local rm = require("render-markdown")
    local enabled = require("render-markdown.state").enabled
    if enabled then
        rm.disable()
    else
        rm.enable()
    end
end, { desc = "Toggle Render Markdown" })
