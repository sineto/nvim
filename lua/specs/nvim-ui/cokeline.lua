local M = {'noib3/nvim-cokeline'}

-- M.dependencies = {
--   'kyazdani42/nvim-web-devicons'
-- }

M.config = function ()
  local colors = om.colors()
  local get_hex = require('cokeline/utils').get_hex

    om.nnoremap('<C-A-h>', '<Plug>(cokeline-switch-prev)')
    om.nnoremap('<C-A-l>', '<Plug>(cokeline-switch-next)')
    om.nnoremap('<A-a>', '<Plug>(cokeline-focus-prev)')
    om.nnoremap('<A-s>', '<Plug>(cokeline-focus-next)')
    om.nnoremap('<A-w>', '<cmd>bd<cr>')
    om.nnoremap('<A-S-w>', '<cmd>%bd<cr>')

  for i = 1,9 do
    om.nnoremap(('<Leader>%s'):format(i), ('<Plug>(cokeline-focus-%s)'):format(i))
  end

  require('cokeline').setup({
    default_hl = {
      fg = function(buffer)
        return buffer.is_focused and colors.yellow[1] or get_hex('Comment', 'fg')
      end,
      bg = get_hex('ColorColumn', 'bg')
    },
    sidebar = {
      filetype = 'NvimTree',
      -- filetype = 'neo-tree',
      components = {
        {
          -- text = '  NvimTree',
          text = '  EXPLORER',
          fg = yellow,
          -- bg = get_hex('NvimTreeNormal', 'bg'),
          bg = get_hex('NeoTreeNormal', 'bg'),
          style = 'bold',
        },
      }
    },

    components = {
      {
        text = function(buffer)
          return ' ' .. buffer.index .. ': '
        end,
      },
      -- {
      --   text = function(buffer) return buffer.devicon.icon end,
      --   fg = function(buffer) return buffer.devicon.color end,
      -- },
      {
        text = function(buffer) return buffer.unique_prefix end,
        style = 'italic',
      },
      {
        text = function(buffer) return buffer.filename .. ' ' end,
      },
      {
        text = function(buffer)
          if buffer.is_modified then return "● " end
          return ""
        end,
        fg = function(buffer)
          return buffer.is_focused and colors.orange[1]
        end
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