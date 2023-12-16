local status, mason = pcall(require, "mason")
if (not status) then return end

mason.setup()

local lsp_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if (not lsp_status) then return end

mason_lspconfig.setup()

local lspconf_status, nvim_lsp = pcall(require, "lspconfig")
if (not lspconf_status) then return end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
  -- format on save
  -- if client.server_capabilities.documentFormattingProvider then
  --   vim.api.nvim_create_autocmd("BufWritePre", {
  --     group = vim.api.nvim_create_augroup("Format", { clear = true }),
  --     buffer = bufnr,
  --     callback = function() vim.lsp.buf.formatting_seq_sync() end
  --   })
  -- end
end

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" }
}

nvim_lsp.pyright.setup {}

nvim_lsp.lua_ls.setup {
  diagnostics = {
    globals = {
      "vim", "require"
    }
  }
}
