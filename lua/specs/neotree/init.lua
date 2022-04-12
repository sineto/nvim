local M = {'nvim-neo-tree/neo-tree.nvim'}

M.branch = "v2.x"

M.requires = {
  'nvim-lua/plenary.nvim',
  'kyazdani42/nvim-web-devicons', -- not strictly required, but recommended
  'MunifTanjim/nui.nvim'
}

M.config = function()
  require('neo-tree').setup({
    close_if_last_window = true,
    window = {
      width = 32,
    },
    filesystem = {
      filtered_items = {
        visible = true,
        hide_gitignored = false,
        never_show = {
          '.git',
          'node_modules',
          '.tool-versions',
          '.idea',
        }
      }
    }
  })

  require('main.utils').map_leader_keys({
    b = '<cmd>NeoTreeShowToggle<cr>',
  })
end

return M