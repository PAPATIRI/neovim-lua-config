local lspconfig = require("lspconfig")
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- lspconfig.emmet_ls.setup({
-- 	-- on_attach = on_attach,
-- 	capabilities = capabilities,
-- 	filetypes = { "html", "css", "javascript", "typescriptreact", "javascriptreact" },
-- })

return {
	capabilities = capabilities,
	filetypes = { "html", "css", "scss", "sass", "less", "typescriptreact", "javascriptreact" },
}
