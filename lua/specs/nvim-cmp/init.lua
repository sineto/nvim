local M = {'hrsh7th/nvim-cmp'}

M.requires = {
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/cmp-vsnip',
  'onsails/lspkind-nvim',
  require('specs.vsnip')
}

M.config = function ()
  local cmp = require('cmp')
  local lspkind = require('lspkind')

  cmp.setup({
    snippet = {
      expand = function (args)
        vim.fn['vsnip#anonymous'](args.body)
      end
    },
    sources = cmp.config.sources({
		  { name = 'nvim_lsp' },
		  { name = 'vsnip' }
		  }, {
		  { name = 'buffer' },
      { name = 'path' }
    }),
    formatting = {
      format = lspkind.cmp_format({
        mode = "symbol_text",
        with_text = true,
      }),
    },
    mapping = {
      ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    },
  })
end

return M