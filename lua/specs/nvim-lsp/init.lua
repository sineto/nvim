local M = {'williamboman/mason.nvim'}

M.requires = {
  'neovim/nvim-lspconfig',
  require('specs.nvim-lsp.null-ls'),
  require('specs.nvim-lsp.mason-config'),
  require('specs.nvim-lsp.signature'),
  require('specs.nvim-lsp.saga'),
  require('specs.nvim-lsp.trouble'),
  require('specs.nvim-lsp.fidget'),
  require('specs.nvim-lsp.lspkind'),
  {'lvimuser/lsp-inlayhints.nvim', branch = 'anticonceal'},
  -- 'lvimuser/lsp-inlayhints.nvim',
}


M.config = function()
  om.lsp = {}

  local u = require('core.utils')

  -- Sign column
  local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
  for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
  end

  require('lsp-inlayhints').setup()
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

  local capabilities = vim.lsp.protocol.make_client_capabilities()
  om.lsp.capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
  om.lsp.capabilities.textDocument.completion.completionItem.snippetSupport = true
  om.lsp.capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = {
      'documentation',
      'detail',
      'additionalTextEdits',
    }
  }

  om.lsp.capabilities.textDocument.codeAction = {
    resolveSupport = {
      properties = vim.list_extend(
        capabilities.textDocument.codeAction.resolveSupport.properties, {
          "documentation",
          "detail",
          "additionalTextEdits",
        }
      ),
    },
  }

  om.lsp.on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Formatting file on save
    if client.server_capabilities.documentFormattingProvider then
      vim.cmd([[
        augroup LspFormatting
          autocmd! * <buffer>
          autocmd BufWritePre <buffer> lua vim.lsp.buf.format()
        augroup END
      ]])
    end

    if client.server_capabilities.documentHighlight then
      vim.api.nvim_exec([[
        augroup lsp_document_highlight
          autocmd! * <buffer>
          autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
          autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
        augroup END
      ]], false)
    end

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    u.bufmap_keys(bufnr, {
      {'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>'},
      {'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>'},
      -- {'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>'},
      {'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>'},
      {'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>'},
      {'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>'},
      {'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>'},
      -- {'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>'},
      {'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>'},
      {'n', '<space>cc', '<cmd>lua vim.diagnostic.open_float(nil, {focus=false, scope="cursor"})<CR>'},
    })
  end
end

return M