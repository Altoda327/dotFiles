require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls" },
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig").lua_ls.setup {
  capabilites = capabilities,
}
