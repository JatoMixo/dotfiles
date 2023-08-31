local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
  'rust_analyzer',
  'tsserver',
  'svelte',
  'pylsp',
  'lua_ls',
  'arduino_language_server',
  'cssls',
  'html',
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = { }
})

lsp.setup()
