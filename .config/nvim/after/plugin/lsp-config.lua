require("mason").setup {
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
}

require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls" },
}

-- local on_attach = function(client, bufnr)
--   -- MAPPINGS
--   local bufopts = { noremap=true, silent=true, buffer=bufnr }
--   vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
--   vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
--   vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, bufopts)
-- end

local lspconfig = require('lspconfig')

lspconfig.lua_ls.setup({})

vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})

-- lspconfig.tsserver.setup{
--     on_attach = on_attach,
--     flags = lsp_flags,
-- }
