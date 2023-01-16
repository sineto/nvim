local M = {'williamboman/mason.nvim'}

M.requires = {
  require('specs.nvim-lsp.mason-lspconfig')
}

M.config = function()
  -- require('lsp-inlayhints').setup()
  require('mason').setup({
    max_concurrent_installers = 10,
    log_level = vim.log.levels.DEBUG,
    ui = {
      icons = {
          package_installed = "",
          package_pending = "",
          package_uninstalled = "",
      },
    },
  })
end

return M