local maps = {}

function maps.setup()
  local u = require('main.utils')

  local cmd        = vim.cmd
  local map        = u.map
  local noremap    = u.noremap
  local nnoremap   = u.nnoremap
  local inoremap   = u.inoremap
  local vnoremap   = u.vnoremap
  local map_leader = u.map_leader_keys

  vim.g.mapleader       = ','
  vim.g.maplocalleader  = ','

  -- Select all
  map('', '<C-a>', '<ESC>ggVG<cr>')

  noremap('', '<Down>','<nop>')
  noremap('', '<Up>','<nop>')
  noremap('', '<Left>','<nop>')
  noremap('', '<Right>','<nop>')
  vnoremap('<Down>','<nop>')
  vnoremap('<Up>','<nop>')
  vnoremap('<Left>','<nop>')
  vnoremap('<Right>','<nop>')

  vnoremap('>','>gv')
  vnoremap('<','<gv')

  -- toggle number, relativenumber
  nnoremap('<leader>cn', ':CycleNumbering<cr>')

  -- splits
  nnoremap("<leader>hs", ":split<CR>")
  nnoremap("<leader>vs", ":vsplit<CR>")

  -- Undo and Redo on insert mode
  inoremap('<C-u>', '<C-o>u')
  inoremap('<C-r>', '<C-o>')

  -- Save file with Ctrl-s
  nnoremap('<C-s>', ':w<cr>')
  inoremap('<C-s>', '<Esc>:w<cr>a')

    -- Copy to system clippboard
  nnoremap("<leader>y", '"+y')
  vnoremap("<leader>y", '"+y')

  -- Paste from system clippboard
  nnoremap("<leader>p", '"+p')
  vnoremap("<leader>p", '"+p')

  -- Clear highlight search
  nnoremap("<leader>nh", ":nohlsearch<CR>")
  vnoremap("<leader>nh", ":nohlsearch<CR>")

  cmd([[
    "" Use the system clipboard:
    "" very usefull if you use Tmux and desire yank and copy text
    "" between panes and windows.
    "" see :help provider-clipboard
    if has('unnamedplus')
      set clipboard+=unnamed,unnamedplus
    endif
    noremap YY "+y<cr>
    noremap XX "+x<xr>
    noremap <leader>p "+gP<cr>
    ""
  ]])

  cmd([[
    "" exiting and saving
    cnoreabbrev W! w!
    cnoreabbrev Q! q!
    cnoreabbrev Qall! qall!
    cnoreabbrev Qall qall
    cnoreabbrev Wq wq
    cnoreabbrev Wa wa
    cnoreabbrev wQ wq
    cnoreabbrev WQ wq
    cnoreabbrev W w
    cnoreabbrev X x
    cnoreabbrev Q q
  ]])

  map_leader({
    mc = '<cmd>PackerCompile<cr>',
    mi = '<cmd>PackerInstall<cr>',
    mu = '<cmd>PackerUpdate<cr>',
    ms = '<cmd>PackerSync<cr>',
  })
end

return maps
