local M = {'jose-elias-alvarez/null-ls.nvim'}

M.requires = {
  'nvim-lua/plenary.nvim'
}

M.after = 'nvim-lsp-installer'

M.config = function()
  local null_ls = require('null-ls')

  local sources = {
    -- Refactoring actions
    null_ls.builtins.code_actions.refactoring,

    -- Formatting
    null_ls.builtins.formatting.gofmt,
    null_ls.builtins.formatting.goimports,
    null_ls.builtins.formatting.golines,
    null_ls.builtins.formatting.prettier,

    -- Diagnostics
    null_ls.builtins.diagnostics.golangci_lint,
  }

  null_ls.setup({
    sources = sources,
    on_attach = om.lsp.on_attach
  })
end

return M