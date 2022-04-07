local M = {'folke/trouble.nvim'}

M.requires = {
  require('specs.webdevicons')
}

M.config = function()
  local u = require('main.utils')
  local nnoremap = u.nnoremap

  require('trouble').setup({})
  nnoremap('<leader>xx', '<cmd>TroubleToggle<cr>')
  nnoremap('<leader>xw', '<cmd>Trouble workspace_diagnostics<cr>')
  nnoremap('<leader>xd', '<cmd>Trouble document_diagnostics<cr>')
end

return M