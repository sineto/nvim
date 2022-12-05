local M = {'jose-elias-alvarez/null-ls.nvim'}

M.requires = {
  'nvim-lua/plenary.nvim',
  'ThePrimeagen/refactoring.nvim',
}

M.after = {'mason.nvim'}

M.config = function()
  local null_ls = require('null-ls')

  local sources = {
    -- Refactoring actions
    null_ls.builtins.code_actions.refactoring,
    null_ls.builtins.code_actions.eslint,

    -- Formatting
    null_ls.builtins.formatting.shfmt,
    null_ls.builtins.formatting.deno_fmt,
    null_ls.builtins.formatting.autopep8,
    null_ls.builtins.formatting.gofmt,
    null_ls.builtins.formatting.goimports,
    null_ls.builtins.formatting.golines,
    null_ls.builtins.formatting.terraform_fmt.with({
      filetypes = { 'terraform', 'tf', 'hcl', 'tfvars' }
    }),

    -- Diagnostics
    null_ls.builtins.diagnostics.pylint,
    null_ls.builtins.diagnostics.golangci_lint,
    null_ls.builtins.diagnostics.ansiblelint,
  }

  null_ls.setup({
    sources = sources,
    on_attach = om.lsp.on_attach
  })
end

return M