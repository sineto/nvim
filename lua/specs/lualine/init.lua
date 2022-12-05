local M = {'nvim-lualine/lualine.nvim'}

M.requires = { 'kyazdani42/nvim-web-devicons', opt = true }

M.config = function()
  local colors = require('core.utils').colors()

  local mode_map = {
    ['n']    = '--NORMAL--',
    ['no']   = 'O-PENDING',
    ['nov']  = 'O-PENDING',
    ['noV']  = 'O-PENDING',
    ['no�'] = 'O-PENDING',
    ['niI']  = '--NORMAL--',
    ['niR']  = '--NORMAL--',
    ['niV']  = '--NORMAL--',
    ['nt']   = '--NORMAL--',
    ['v']    = 'VISUAL',
    ['vs']   = 'VISUAL',
    ['V']    = 'V-LINE',
    ['Vs']   = 'V-LINE',
    ['�']   = 'V-BLOCK',
    ['�s']  = 'V-BLOCK',
    ['s']    = 'SELECT',
    ['S']    = 'S-LINE',
    ['�']   = 'S-BLOCK',
    ['i']    = 'INSERT',
    ['ic']   = 'INSERT',
    ['ix']   = 'INSERT',
    ['R']    = 'REPLACE',
    ['Rc']   = 'REPLACE',
    ['Rx']   = 'REPLACE',
    ['Rv']   = 'V-REPLACE',
    ['Rvc']  = 'V-REPLACE',
    ['Rvx']  = 'V-REPLACE',
    ['c']    = '--COMMAND--',
    ['cv']   = 'EX',
    ['ce']   = 'EX',
    ['r']    = 'REPLACE',
    ['rm']   = 'MORE',
    ['r?']   = 'CONFIRM',
    ['!']    = '--SHELL--',
    ['t']    = 'TERMINAL',
  }

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
    symbols = {error = ' ', warn = ' '},
    always_visible = true
  }

  function mode_m()
    local mode = mode_map[vim.api.nvim_get_mode().mode]

    if  mode == '--NORMAL--' or mode == '--COMMAND--' or mode == '--SHELL--' then
      return mode
    end
    -- return mode_map[vim.api.nvim_get_mode().mode] or "__"
    return ''
  end

  local function window()
    return 'W' .. vim.api.nvim_win_get_number(0) .. "|"
  end

  local function branch()
    -- return '⎇ ' .. vim.b.gitsigns_head
    return ' ' .. vim.b.gitsigns_head
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

  local function cursor_pos()
    local row, col = unpack(vim.api.nvim_win_get_cursor(0))
    return 'Ln ' .. row .. ', Col ' .. col
  end

  local function count_lines()
    return vim.api.nvim_buf_line_count(0)
  end

  require('lualine').setup({
    options = {
      theme = 'sonokai',
      section_separators = '',
      component_separators = ''
    },
    sections = {
      -- lualine_a = {'mode'},
      -- lualine_b = {window, 'filename'},
      -- lualine_c = {{'b:gitsigns_head', icon = ''}, diff},
      -- lualine_x = {diagnostics, 'filetype', 'encoding'},
      -- lualine_y = {'progress'},
      -- lualine_z = {'location'}

      lualine_a = {branch},
      lualine_b = {diagnostics},
      lualine_c = {mode_m},
      lualine_x = {'filetype', 'encoding'},
      lualine_y = {'location'},
      lualine_z = {'progress'}
    },
    inactive_sections = {
      -- lualine_a = {'mode'},
      -- lualine_b = {window, 'filename'},
      -- lualine_c = {{'b:gitsigns_head'}, diff},
      -- lualine_x = {'filetype'},
      -- lualine_y = {'progress'},
      -- lualine_z = {'location'}

      lualine_a = {branch},
      lualine_b = {diagnostics},
      lualine_c = {mode_m},
      lualine_x = {'filetype', 'encoding'},
      lualine_y = {'location'},
      lualine_z = {}
    },
    tabline = {},
    extensions = {}
  })
end

return M