local M = {'noib3/nvim-cokeline'}

M.requires = {'kyazdani42/nvim-web-devicons'}

M.config = function ()

  local get_hex = require('cokeline/utils').get_hex
  require('cokeline').setup({
    default_hl = {
      fg = function(buffer)
        return
          buffer.is_focused
          and get_hex('ColorColumn', 'bg')
           or get_hex('Normal', 'fg')
      end,
      bg = function(buffer)
        return
          buffer.is_focused
          and get_hex('Normal', 'fg')
           or get_hex('ColorColumn', 'bg')
      end,
    },

    sidebar = {
      filetype = 'neo-tree',
      components = {
        {
          text = '  NeoTree',
          fg = yellow,
          bg = get_hex('NeoTreeNormal', 'bg'),
          style = 'bold',
        },
      }
    },

    components = {
      {
        text = function(buffer) return ' ' .. buffer.devicon.icon end,
        fg = function(buffer) return buffer.devicon.color end,
      },
      {
        text = function(buffer) return buffer.unique_prefix end,
        fg = get_hex('Comment', 'fg'),
        style = 'italic',
      },
      {
        text = function(buffer) return buffer.filename .. ' ' end,
      },
      {
        text = '',
        delete_buffer_on_left_click = true,
      },
      {
        text = ' ',
      }
    },
  })
end

return M