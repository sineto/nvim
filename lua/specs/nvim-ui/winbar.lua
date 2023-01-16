local M = {'utilyre/barbecue.nvim'}

M.requires = {
  'neovim/nvim-lspconfig',
  'smiteshp/nvim-navic',
  'nvim-tree/nvim-web-devicons', -- optional dependency
}

M.config = function()
  require('barbecue').setup({
    attach_navic = false,
    create_autocmd = false
  })

  vim.api.nvim_create_autocmd({
    'WinScrolled',
    'BufWinEnter',
    'CursorHold',
    'InsertLeave',
  
    -- include these if you have set `show_modified` to `true`
    'BufWritePost',
    'TextChanged',
    'TextChangedI',
  }, {
    group = vim.api.nvim_create_augroup('barbecue#create_autocmd', {}),
    callback = function()
      require('barbecue.ui').update()
    end,
  })
end

return M