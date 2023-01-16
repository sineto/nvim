local M = {'karb94/neoscroll.nvim'}

M.config = function()
  require('neoscroll').setup({
    hide_cursor = false,
  })

  -- TODO: fix <C-b> mapping to not conflict with nvim-tree
  require('neoscroll.config').set_mappings({
    ['<C-b>'] = {'', {''}},
    ['<C-f>'] = {'', {''}},
    ['<C-u>'] = {'scroll', {'-vim.wo.scroll', 'true', '250'}},
    ['<C-d>'] = {'scroll', { 'vim.wo.scroll', 'true', '250'}},
    ['<C-y>'] = {'scroll', {'-0.10', 'false', '100'}},
    ['<C-e>'] = {'scroll', { '0.10', 'false', '100'}},
    ['zt']    = {'zt', {'250'}},
    ['zz']    = {'zz', {'250'}},
    ['zb']    = {'zb', {'250'}},
  })
end

return M