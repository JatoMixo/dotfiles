local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
  'rust_analyzer',
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = { }
})

lsp.setup()
