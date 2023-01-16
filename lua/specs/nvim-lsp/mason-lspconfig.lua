local M = {'williamboman/mason-lspconfig.nvim'}

M.config = function() 

  local lsp_config = require('lspconfig')
  local mason_installer = require('mason-lspconfig')
  -- local inlay_hints = require('lsp-inlayhints')

  om.lsp.servers = {
    -- main languages
    gopls = 'gopls',
    tsserver = 'typescript-language-server',
    eslint = 'eslint-lsp',
    denols = 'deno',

    -- devops/iac languages
    -- TODO: terraform-ls causing error
    -- terraformls = 'terraform-ls',
    -- tflint = 'tflint',
    ansiblels = 'ansible-language-server',
    dockerls = 'dockerfile-language-server',

    -- support languages
    bashls = 'bash-language-server', 
    pylsp = 'python-lsp-server',
    tailwindcss = 'tailwindcss-language-server',
    yamlls = 'yaml-language-server',
    jsonls = 'json-lsp',
    cssls = 'css-lsp',
  }

  local server_opts = {}
  table.insert(server_opts, function(server_name) -- Default handler (optional)
    lsp_config[server_name].setup({
      on_attach = om.lsp.on_attach,
      capabilities = om.lsp.capabilities,
    })
  end)

  for server_name, mason_package in pairs(om.lsp.servers) do
    local server_config = function()
      local init_options = {}
      local settings = {}

      local on_attach = function(client, bufnr) 
        -- disable formmating lsp engine format and defines null-ls as default client
        client.server_capabilities.document_formatting = false
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false

        -- if client.server_capabilities.inlayHintProvider then
        --   inlay_hints.on_attach(client, bufnr)
        -- end

        -- vim.api.nvim_create_augroup("LspAttach_inlayhints", {})
        -- vim.api.nvim_create_autocmd("LspAttach", {
        --   group = "LspAttach_inlayhints",
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

      if server_name == 'tsserver' then
        init_options = {
          preferences = {
            importModuleSpecifierPreference = 'project-relative',
          },
        }

        settings = {
          typescript = {
            inlayHints = {
              includeInlayParameterNameHints = 'all',
              includeInlayParameterNameHintsWhenArgumentMatchesName = false,
              includeInlayFunctionParameterTypeHints = true,
              includeInlayVariableTypeHints = true,
              includeInlayPropertyDeclarationTypeHints = true,
              includeInlayFunctionLikeReturnTypeHints = true,
              includeInlayEnumMemberValueHints = true,
            }
          },
          javascript = {
            inlayHints = {
              includeInlayParameterNameHints = 'all',
              includeInlayParameterNameHintsWhenArgumentMatchesName = false,
              includeInlayFunctionParameterTypeHints = true,
              includeInlayVariableTypeHints = true,
              includeInlayPropertyDeclarationTypeHints = true,
              includeInlayFunctionLikeReturnTypeHints = true,
              includeInlayEnumMemberValueHints = true,
            }
          }
        }
      end

      if server_name == 'denols' then
        init_options = { enable = false }
      end

      if server_name == 'gopls' then
        settings = {
          gopls = {
            hints = {
              assignVariableTypes = true,
              compositeLiteralFields = true,
              compositeLiteralTypes = true,
              constantValues = true,
              functionTypeParameters = true,
              parameterNames = true,
              rangeVariableTypes = true,
            },
          },
        }
      end

      lsp_config[server_name].setup({
        init_options = init_options,
        on_attach = on_attach,
        settings = settings,
      })

      vim.cmd('do User LspAttachBuffers')
    end

    server_opts[server_name] = server_config
  end

  function ensure_installed(server_list)
    local servers = {}
    for server_name, _ in pairs(server_list) do
      table.insert(servers, server_name)
    end
    return servers
  end

  -- Setup servers to install
  mason_installer.setup({ 
    ensure_installed = ensure_installed(om.lsp.servers),
    automatic_installation = true,
  })

  -- Setup handlers to configure servers
  mason_installer.setup_handlers(server_opts)
end

return M