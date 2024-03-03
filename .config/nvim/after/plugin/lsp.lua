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
  'astro',
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = ' ',
        warn = ' ',
        hint = '󰌵',
        info = ' ',
    },
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
})

cmp.setup({
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    }
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.setup()

local lspconfig = require("lspconfig")
local util = require("lspconfig/util")
lspconfig.rust_analyzer.setup({
    filetypes = {"rust"},
    root_dir = util.root_pattern("Cargo.toml"),
    settings = {
        ["rust-analyzer"] = {
            cargo = {
                allFeatures = true,
            },
        },
    },
})

vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)

