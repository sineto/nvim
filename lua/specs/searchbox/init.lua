local M = {'VonHeikemen/searchbox.nvim'}

M.requires = {'MunifTanjim/nui.nvim'}

M.config = function()
  local u = require('main.utils')
  local nnoremap = u.nnoremap
  local xnoremap = u.xnoremap

  nnoremap('<C-f>', ':SearchBoxIncSearch<cr>')
  nnoremap('<leader>rpl', ':SearchBoxReplace<cr>')
  xnoremap('<leader>rpl', ':SearchBoxReplace visual_mode=true<cr>')
  nnoremap('<leader>rn', ':SearchBoxReplace -- <C-r>=expand("<cword>")<cr><cr>')
  xnoremap('<leader>rn', ':SearchBoxReplace visual_mode=true -- <C-r>=expand("<cword>")<cr><cr>')
end

return M