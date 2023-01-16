local M = {'nvim-tree/nvim-tree.lua'}

M.requires = {'nvim-tree/nvim-web-devicons'}

M.config = function()
  require('nvim-tree').setup({
    renderer = {
      indent_markers = {
        enable = true,
      },
    },
    filters = {
      custom = { '^.git$' }
    },
    ignore_ft_on_setup = {
      'gitcommit',
    },
  })

  om.nnoremap('<C-n>', '<cmd>NvimTreeToggle<cr>')
  om.map_leader_keys({
    b = '<cmd>NvimTreeToggle<cr>'
  })     

end

return M