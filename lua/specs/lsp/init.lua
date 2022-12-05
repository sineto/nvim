local M = {'williamboman/mason.nvim'}

M.requires = {
  'neovim/nvim-lspconfig',
  'williamboman/mason-lspconfig.nvim',
  'ThePrimeagen/refactoring.nvim',
  -- 'jubnzv/virtual-types.nvim',
  -- {'lvimuser/lsp-inlayhints.nvim', branch = 'anticonceal'},
  require('specs.lsp.null-ls'),
  require('specs.lsp.fidget'),
  require('specs.lsp.trouble'),
  require('specs.lsp.saga'),
  require('specs.lsp.signature')
}

om.lsp = {}

M.config = function()
  local u = require('core.utils')
  local lsp_installer = require('nvim-lsp-installer')
  local lsp_config = require('lspconfig')

  lsp_installer.setup({})

  om.lsp.servers = {
    'bashls', 
    'pylsp',
    'eslint',
    'tsserver',
    'denols',
    'tailswindcss',
    'gopls',
    'terraformls',
    'tflint',
    'ansiblels',
    'dockerls',
    'yamlls'
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
  capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
  capabilities.textDocument.completion.completionItem.snippetSupport = true
  capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = {
      'documentation',
      'detail',
      'additionalTextEdits',
    }
  }

  function om.lsp.on_attach(client, bufnr)
    -- local virtualtypes_present, virtualtypes = pcall(require, 'virtualtypes')

    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    -- if client.supports_method("textDocument/formatting") then
    --     vim.api.nvim_create_autocmd("BufWritePre", {
    --         group = augroup,
    --         buffer = bufnr,
    --         callback = function()
    --             vim.lsp.buf.format({ bufnr = bufnr, async = false })
    --         end,
    --     })
    -- end

    -- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    --   vim.lsp.diagnostic.on_publish_diagnostics, {
    --     virtual_text = false
    --   }
    -- )

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

    -- if virtualtypes_present then
    --   virtualtypes.on_attach(client, bufnr)
    -- end

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

    -- vim.api.nvim_create_augroup('LspAttach_inlayhints', {})
    -- vim.api.nvim_create_autocmd('LspAttach', {
    --   group = 'LspAttach_inlayhints',
    --   callback = function(args)
    --     if not (args.data and args.data.client_id) then
    --       return
    --     end
    
    --     local bufnr = args.buf
    --     local client = vim.lsp.get_client_by_id(args.data.client_id)
    --     require('lsp-inlayhints').on_attach(client, bufnr)
    --   end,
    -- })
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
  local server_opts = {}
  for _, lang in ipairs(om.lsp.servers) do
    server_opts[lang] = function(opts)
      if lang == 'tsserver' then
        opts.init_options = {
          preferences = {
            importModuleSpecifierPreference = 'project-relative',
          },
        }
      end

      if lang == 'denols' then
        opts.init_options = {
          lint = false,
        }
      end

      opts.on_attach = function(client)
        -- disable formmating lsp engine format and defines null-ls as default client
        client.server_capabilities.document_formatting = false
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
      end

      return opts
    end
  end

  -- Servers ready to setup
  for _, lsp in ipairs(lsp_installer.get_installed_servers()) do
    local default_opts = {
      on_attach = om.lsp.on_attach,
      capabilities = capabilities
    }

    server_opts.lsp = {
      disable_lsp = { 'denols' },
      format_on_save = { 
        disable = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact', 'go' }
      },
    }

    if server_opts[lsp.name] then
      server_opts[lsp.name](default_opts)
    end

    lsp_config[lsp.name].setup(server_opts[lsp.name])
    vim.cmd('do User LspAttachBuffers')
  end
end

return M