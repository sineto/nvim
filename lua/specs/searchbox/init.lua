local M = {'VonHeikemen/searchbox.nvim'}

M.requires = {'MunifTanjim/nui.nvim'}

M.config = function()
  local u = require('main.utils')
  local nnoremap = u.nnoremap

  nnoremap('<C-f>', ':SearchBoxIncSearch<cr>')
end

return M