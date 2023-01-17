local M = {'ms-jpq/chadtree'}

M.branch = 'chad'

M.build = '!python3 -m chadtree deps'

M.config = function()

  local chadtree_settings = {
    options = { 
      show_hidden = true
    }
  }

  vim.api.nvim_set_var('chadtree_settings', chadtree_settings)

  local u = require('core.utils')
  local map_leader = u.map_leader_keys 
  local nnoremap = u.nnoremap
  local inoremap = u.inoremap

  nnoremap('<C-b>', '<cmd>CHADopen<cr>')
  map_leader({
    b = '<cmd>CHADopen<cr>'
  })     
end

return M