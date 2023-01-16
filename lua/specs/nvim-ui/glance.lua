local M = {'dnlhc/glance.nvim'}

M.config = function()
  require('glance').setup({})
  vim.keymap.set('n', '<leader>gd', '<cmd>Glance definitions<cr>')
  vim.keymap.set('n', 'gr', '<cmd>Glance references<cr>')
  vim.keymap.set('n', 'gt', '<cmd>Glance type_definitions<cr>')
  vim.keymap.set('n', '<leader>gi', '<cmd>Glance implementations<cr>')
end

return M