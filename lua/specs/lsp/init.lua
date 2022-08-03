local M = {'williamboman/nvim-lsp-installer'}

M.requires = {
  'neovim/nvim-lspconfig',
  'ThePrimeagen/refactoring.nvim',
  require('specs.lsp.null-ls'),
  require('specs.lsp.fidget'),
  require('specs.lsp.trouble'),
  require('specs.lsp.saga'),
  require('specs.lsp.signature')
}

om.lsp = {}

M.config = function()
  local u = require('main.utils')
  local lsp_installer = require('nvim-lsp-installer')
  local lsp_config = require('lspconfig')

  lsp_installer.setup({})

  om.lsp.servers = {
    'bashls', 
    'pylsp',
    'eslint',
    'tsserver',
    'tailswindcss',
    'gopls',
    'terraformls',
    'tflint',
    'ansiblels',
  }

  vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = false,
  })

  -- Sign column
  local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
  for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
  end

  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
  capabilities.textDocument.completion.completionItem.snippetSupport = true
  capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = {
      'documentation',
      'detail',
      'additionalTextEdits',
    }
  }

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

  -- Set custom server config
  local server_opts = {
    ['gopls'] = function(opts)
      -- disable formmating from gopls and defines null-ls as default client
      opts.on_attach = function(client)
        client.resolved_capabilities.document_formatting = false
        client.resolved_capabilities.document_range_formatting = false
      end

      return opts
    end,
    ['tsserver'] = function(opts)
      -- disable formmating from tsserver and defines null-ls as default client
      opts.on_attach = function(client)
        client.resolved_capabilities.document_formatting = false
        client.resolved_capabilities.document_range_formatting = false
      end

      return opts
    end,
    ['terraformls'] = function(opts)
      -- disable formmating from terraformls and defines null-ls as default client
      opts.on_attach = function(client)
        client.resolved_capabilities.document_formatting = false
        client.resolved_capabilities.document_range_formatting = false
      end

      return opts
    end,
    ['bashls'] = function(opts)
      -- disable formmating from terraformls and defines null-ls as default client
      opts.on_attach = function(client)
        client.resolved_capabilities.document_formatting = false
        client.resolved_capabilities.document_range_formatting = false
      end

      return opts
    end,
    ['ansiblels'] = function(opts)
      -- disable formmating from terraformls and defines null-ls as default client
      opts.on_attach = function(client)
        client.resolved_capabilities.document_formatting = false
        client.resolved_capabilities.document_range_formatting = false
      end

      return opts
    end
  }

  -- Servers ready to setup
  for _, lsp in ipairs(lsp_installer.get_installed_servers()) do
    local default_opts = {
      on_attach = om.lsp.on_attach,
      capabilities = capabilities
    }

    if server_opts[lsp.name] then
      server_opts[lsp.name](default_opts)
    end

    lsp_config[lsp.name].setup(default_opts)
    vim.cmd('do User LspAttachBuffers')
  end
end

return M