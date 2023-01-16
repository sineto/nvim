----------------------------------------------------------------------------------------------------
-- Colors
----------------------------------------------------------------------------------------------------
function om.colors()
  -- local configuration = vim.fn['sonokai#get_configuration']()
  -- return vim.fn['sonokai#get_palette'](configuration.style, configuration.colors_override)
  return {
    black=      {'#1a181a',   '232'},
    bg_dim=     {'#211f21',   '232'},
    bg0=        {'#2d2a2e',   '235'},
    bg1=        {'#37343a',   '236'},
    bg2=        {'#3b383e',   '236'},
    bg3=        {'#423f46',   '237'},
    bg4=        {'#49464e',   '237'},
    bg_red=     {'#ff6188',   '203'},
    diff_red=   {'#55393d',   '52'},
    bg_green=   {'#a9dc76',   '107'},
    diff_green= {'#394634',   '22'},
    bg_blue=    {'#78dce8',   '110'},
    diff_blue=  {'#354157',   '17'},
    diff_yellow={'#4e432f',   '54'},
    fg=         {'#e3e1e4',   '250'},
    red=        {'#f85e84',   '203'},
    orange=     {'#ef9062',   '215'},
    yellow=     {'#e5c463',   '179'},
    green=      {'#9ecd6f',   '107'},
    blue=       {'#7accd7',   '110'},
    purple=     {'#ab9df2',   '176'},
    grey=       {'#848089',   '246'},
    grey_dim=   {'#605d68',   '240'},
    none=       {'NONE',      'NONE'}
  }
end

----------------------------------------------------------------------------------------------------
-- Mapping
----------------------------------------------------------------------------------------------------
function om.map(mode, lhs, rhs)
  vim.api.nvim_set_keymap(mode, lhs, rhs, { silent = true })
end

function om.map_opts(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function om.buf_map(bufnr, mode, lhs, rhs)
  vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, { noremap = true, silent = true })
end

function om.bufmap_keys(bufnr, mappings)
  for _, map in ipairs(mappings) do
    local mode, lhs, rhs = map[1], map[2], map[3]
    om.buf_map(bufnr, mode, lhs, rhs)
  end
end

function om.map_leader_keys(mappings, mode)
  for map, cmdm in pairs(mappings) do
    om.map(mode or 'n', string.format('<leader>%s', map), cmdm)
  end
end

function om.noremap(mode, lhs, rhs)
  vim.api.nvim_set_keymap(mode, lhs, rhs, { noremap = true, silent = true })
end

function om.nnoremap(lhs, rhs) om.noremap('n', lhs, rhs) end
function om.inoremap(lhs, rhs) om.noremap('i', lhs, rhs) end
function om.vnoremap(lhs, rhs) om.noremap('v', lhs, rhs) end
function om.xnoremap(lhs, rhs) om.noremap('x', lhs, rhs) end