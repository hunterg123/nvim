-- Setup Mason
require('mason').setup()

-- Setup Mason LSP bridge
require('mason-lspconfig').setup({
  ensure_installed = { 'ts_ls', 'pyright', 'lua_ls' }
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
  vim.keymap.set('n', 'gl', vim.diagnostic.open_float,opts)
end

-- Define server configs with the new API
vim.lsp.config("ts_ls", {
  capabilities = capabilities,
  on_attach = on_attach,
  -- Example: tighten root to avoid deno conflicts
  -- root_dir = vim.fs.root(0, { "package.json", "tsconfig.json", ".git" }),
})

vim.lsp.config("pyright", {
  capabilities = capabilities,
  on_attach = on_attach,
})

vim.lsp.config("lua_ls", {
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
      workspace = { library = vim.api.nvim_get_runtime_file("", true), checkThirdParty = false },
    },
  },
})