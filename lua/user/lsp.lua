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
    'clangd'
}

lsp.on_attach(function(client,bufnr)
    local opts = {buffer = bufnr, remap = false}
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
end)

require("mason").setup(settings)
require("mason-lspconfig").setup({
	ensure_installed = servers,
	automatic_installation = true,
})

lsp.setup()
