local M = {'williamboman/nvim-lsp-installer'}

M.requires = {
  'neovim/nvim-lspconfig',
  'ThePrimeagen/refactoring.nvim',
  require('specs.lsp.null-ls'),
  require('specs.lsp.fidget'),
  require('specs.lsp.trouble')
}

om.lsp = {}

M.setup = function ()
end

M.config = function()
  local u = require('main.utils')
  local lsp_installer = require('nvim-lsp-installer')

  om.lsp.servers = {
    'gopls'
  }

  vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = false,
  })

  -- Sign column
  local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
  for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
  end

  local capabilities = vim.lsp.protocol.make_client_capabilities()
  -- capabilities.textDocument.completion.completionItem.snippetSupport = true
  -- capabilities.textDocument.completion.completionItem.resolveSupport = {
  --   properties = {
  --     'documentation',
  --     'detail',
  --     'additionalTextEdits',
  --   }
  -- }

  function om.lsp.on_attach(client, bufnr)

    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Formatting file on save
    if client.resolved_capabilities.document_formatting then
      vim.cmd([[
        augroup LspFormatting
          autocmd! * <buffer>
          autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
        augroup END
      ]])
    end

    if client.resolved_capabilities.document_highlight then
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
      {'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>'},
      {'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>'},
      {'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>'},
      {'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>'},
      {'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>'},
      {'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>'},
      {'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>'}
    })
  end

  lsp_installer.settings({
    log_level = vim.log.levels.DEBUG,
    ui = {
      icons = {
        server_installed = "",
        server_pending = "",
        server_uninstalled = "",
      },
    },
  })

  -- Installing servers
  for _, name in pairs(om.lsp.servers) do
    local server_is_found, server = lsp_installer.get_server(name)
    if server_is_found and not server:is_installed() then
      print('Installing ' .. name)
      server:install()
    end
  end

  -- Servers ready to setup
  lsp_installer.on_server_ready(function(server)
    local default_opts = { on_attach = om.lsp.on_attach, capabilities = capabilities }

    -- set custom server config
    local server_opts = {
      ['gopls'] = function()
        -- disable formmating from gopls and defines null-ls as default client
        default_opts.on_attach = function(client)
          client.resolved_capabilities.document_formatting = false
          client.resolved_capabilities.document_range_formatting = false
        end

        return default_opts
      end
    }

    server:setup(server_opts[server.name] and server_opts[server.name]() or default_opts)
    vim.cmd('do User LspAttachBuffers')
  end)

  vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false, scope="cursor"})]]
end

return M