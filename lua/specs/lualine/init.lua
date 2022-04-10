local M = {'nvim-lualine/lualine.nvim'}

M.requires = { 'kyazdani42/nvim-web-devicons', opt = true }

M.config = function()
  local colors = require('main.utils').colors()

  local function window()
    return 'W' .. vim.api.nvim_win_get_number(0) .. "|"
  end

  local function branch()
    return '⎇  ' .. vim.b.gitsigns_head
  end

  local function diff_source()
    local gitsigns = vim.b.gitsigns_status_dict
    if gitsigns then
      return {
        added = gitsigns.added,
        modified = gitsigns.changed,
        removed = gitsigns.removed
      }
    end
  end

  local diff = {
    'diff',
    colored = true,
    diff_color = {
      added    = 'DiffAdd',
      modified = 'DiffChange',
      removed  = 'DiffDelete',
    },
    symbols = {added = '+', modified = '~', removed = '-'},
    source = diff_source
  }

  local diagnostics = {
    'diagnostics',
    sources = {'nvim_diagnostic'},
    sections = {'error', 'warn'},
    diagnostics_color = {
      error = { fg = colors.red[1] },
      warn = { fg = colors.orange[1] }
    },
    always_visible = true
  }

  require('lualine').setup({
    options = {
      theme = 'sonokai',
      section_separators = '',
      component_separators = ''
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {window, 'filename'},
      lualine_c = {branch, diff},
      lualine_x = {diagnostics, 'filetype', 'encoding'},
      lualine_y = {'progress'},
      lualine_z = {'location'}
    },
    inactive_sections = {
      lualine_a = {'mode'},
      lualine_b = {window, 'filename'},
      lualine_c = {{'b:gitsigns_head'}, diff},
      lualine_x = {'filetype'},
      lualine_y = {'progress'},
      lualine_z = {'location'}
    },
    tabline = {},
    extensions = {}
  })
end

return M