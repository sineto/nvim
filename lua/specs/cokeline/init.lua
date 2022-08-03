local M = {'noib3/nvim-cokeline'}

M.requires = {'kyazdani42/nvim-web-devicons'}

M.config = function ()
  local colors = require('main.utils').colors()
  local nnoremap = require('main.utils').nnoremap
  local get_hex = require('cokeline/utils').get_hex

  nnoremap('<C-A-h>', '<Plug>(cokeline-switch-prev)')
  nnoremap('<C-A-l>', '<Plug>(cokeline-switch-next)')
  nnoremap('<A-a>', '<Plug>(cokeline-focus-prev)')
  nnoremap('<A-s>', '<Plug>(cokeline-focus-next)')
  nnoremap('<A-w>', '<cmd>bd<cr>')
  nnoremap('<A-S-w>', '<cmd>%bd<cr>')

  for i = 1,9 do
    nnoremap(('<Leader>%s'):format(i), ('<Plug>(cokeline-focus-%s)'):format(i))
  end

  require('cokeline').setup({
    default_hl = {
      fg = function(buffer)
        return
          buffer.is_focused
          and colors.yellow[1]
           or get_hex('Comment', 'fg')
      end,
      bg = get_hex('ColorColumn', 'bg')
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
        text = function(buffer)
          return buffer.index .. ': '
        end,
      },
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