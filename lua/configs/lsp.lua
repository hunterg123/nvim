-- Setup Mason
require('mason').setup()

-- Setup Mason LSP bridge
require('mason-lspconfig').setup({
  ensure_installed = { 'tsserver', 'pyright', 'lua_ls' }
})

-- Capabilities from nvim-cmp
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Optional: custom on_attach to bind keys
local on_attach = function(_, bufnr)
  local opts = { buffer = bufnr }

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
end

-- Manual setup for each server
local lspconfig = require('lspconfig')

-- tsserver
lspconfig.ts_ls.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

-- pyright
lspconfig.pyright.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

-- lua_ls
lspconfig.lua_ls.setup({
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
    },
  },
})
