local M = {'nvim-neo-tree/neo-tree.nvim'}

M.branch = "v2.x"

M.requires = {
  'nvim-lua/plenary.nvim',
  'kyazdani42/nvim-web-devicons', -- not strictly required, but recommended
  'MunifTanjim/nui.nvim'
}

M.config = function()
  local function float(state)
    local node = state.tree:get_node()
    if (node.type == 'directory' or node:has_children()) and node:is_expanded() then
      state.commands.toggle_node(state)
    else
      renderer.focus_node(state, node:get_parent_id())
    end
  end

   -- toggle a node open or descend to it's first child
  local function dive(state)
    local node = state.tree:get_node()
    if node.type == 'directory' or node:has_children() then
      if not node:is_expanded() then
        if node.type == 'directory' then
          require'neo-tree.sources.filesystem'.toggle_directory(state, node)
        else
          state.commands.toggle_node(state)
        end
      else
        renderer.focus_node(state, node:get_child_ids()[1])
      end
    end
  end

  require('neo-tree').setup({
    close_if_last_window = true,
    window = {
      width = 32,
      mappings = {
        ["h"] = float,
        ["l"] = dive,
        ["<Left>"] = float,
        ["<Right>"] = dive,
      }
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