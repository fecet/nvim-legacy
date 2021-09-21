return function()
local util = require("lspconfig/util")
  local servers = {
    -- "jsonls",
    -- "clangd",
    "pyright",
    --[[ "vimls",
    "html",
    "cssls",
    "phpactor" ]]
  }

  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities.textDocument.completion.completionItem.snippetSupport = true

  for _, server in ipairs(servers) do
    require("lspconfig")[server].setup {
      capabilities = capabilities
    }
  end
end
