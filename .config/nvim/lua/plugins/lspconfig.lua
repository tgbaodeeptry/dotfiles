vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = false;
    virtual_text = true,
    signs = true,
    update_in_insert = false,
  }
)

local lspconfig = require('lspconfig')
local servers = { "pyright", "clangd" }

for _, lsp in ipairs(servers) do 
  lspconfig[lsp].setup {}
end
