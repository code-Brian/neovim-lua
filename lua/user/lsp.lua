local lsp = require("lsp-zero")

lsp.preset('recommended')

local servers = {
    'tsserver',
    'eslint',
    'rust_analyzer',
    'pyright',
    'html',
    'cssls',
    'omnisharp',
    'lua_ls',
}

lsp.on_attach(function(client,bufnr)
    local opts = {buffer = bufnr, remap = false}
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
end)

lsp.setup()
