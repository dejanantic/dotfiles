-- mason: lua-language-server

---@type vim.lsp.Config
return {
    cmd = { 'lua-language-server' },
    filetypes = { 'lua' },
    root_markers = {
        { '.luarc.json', '.luarc.jsonc' },
        { '.stylua.toml', 'stylua.toml' },
        { '.git' },
    },
    settings = {
        Lua = {
            completion = { callSnippet = 'Replace' },
            format = { enable = false },
            hint = {
                enable = true,
                arrayIndex = 'Disable',
                semicolon = 'Disable',
            },
            runtime = { version = 'LuaJIT' },
            workspace = {
                checkThirdParty = false,
                library = {
                    vim.env.VIMRUNTIME,
                    '${3rd}/luv/library',
                },
            },
        },
    },
}
