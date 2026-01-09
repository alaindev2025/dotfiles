require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls" }
vim.lsp.enable(servers)
vim.lsp.inlay_hint.enable()

-- read :h vim.lsp.config for changing options of lsp servers
