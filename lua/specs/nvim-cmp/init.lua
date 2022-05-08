local M = {'hrsh7th/nvim-cmp'}

M.requires = {
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/cmp-vsnip',
  'hrsh7th/vim-vsnip',
  'rafamadriz/friendly-snippets',
  'onsails/lspkind-nvim'
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
      ['<C-n>'] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        elseif vim.fn["vsnip#available"](1) == 1 then
          feedkey("<Plug>(vsnip-expand-or-jump)", "")
        elseif has_words_before() then
          cmp.complete()
        else
          fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
        end
      end, { "i", "s" }),

      ['<C-p>'] = cmp.mapping(function()
        if cmp.visible() then
          cmp.select_prev_item()
        elseif vim.fn["vsnip#jumpable"](-1) == 1 then
          feedkey("<Plug>(vsnip-jump-prev)", "")
        end
      end, { "i", "s" }),
    },
  })

  local map_opts = { expr = true }
  local set_keymap = vim.api.nvim_set_keymap

  set_keymap('i', '<C-j>', [[vsnip#expandable() ? '<Plug>(vsnip-expand)' : '<C-j>']], map_opts)
  set_keymap('s', '<C-j>', [[vsnip#expandable() ? '<Plug>(vsnip-expand)' : '<C-j>']], map_opts)
  set_keymap('i', '<C-l>', [[vsnip#available(1) ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>']], map_opts)
  set_keymap('s', '<C-l>', [[vsnip#available(1) ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>']], map_opts)
end

return M