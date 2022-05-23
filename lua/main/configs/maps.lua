local maps = {}

function maps.setup()
  local u = require('main.utils')

  local cmd        = vim.cmd
  local map        = u.map
  local noremap    = u.noremap
  local nnoremap   = u.nnoremap
  local inoremap   = u.inoremap
  local vnoremap   = u.vnoremap
  local xnoremap   = u.xnoremap
  local map_leader = u.map_leader_keys

  vim.g.mapleader       = ','
  vim.g.maplocalleader  = ','

  -- Select all
  map('', '<C-a>', '<ESC>ggVG<cr>')
  map('', 'H', '^')
  map('', 'L', '$')

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

  -- splits move around and open split
  noremap('', '<C-h>', '<C-w>h')
  noremap('', '<C-j>', '<C-w>j')
  noremap('', '<C-k>', '<C-w>k')
  noremap('', '<C-l>', '<C-w>l')
  nnoremap('<leader>hs', ':split<CR>')
  nnoremap('<leader>vs', ':vsplit<CR>')

  -- Undo and Redo on insert mode
  inoremap('<C-u>', '<C-o>u')
  inoremap('<C-r>', '<C-o>')

  -- Save file with Ctrl-s
  nnoremap('<C-s>', ':w<cr>')
  inoremap('<C-s>', '<Esc>:w<cr>a')

  -- Copy to system clippboard
  nnoremap('<leader>y', '"+y')
  vnoremap('<leader>y', '"+y')

  -- Paste from system clippboard
  nnoremap('<leader>p', '"+p')
  vnoremap('<leader>p', '"+p')

  -- Clear highlight search
  nnoremap('<leader>nh', ':nohlsearch<CR>')
  vnoremap('<leader>nh', ':nohlsearch<CR>')

  -- Move lines and blocks
  nnoremap('<A-j>', ':MoveLine(1)<cr>')
  nnoremap('<A-k>', ':MoveLine(-1)<cr>')
  vnoremap('<A-j>', ':MoveBlock(1)<cr>')
  vnoremap('<A-k>', ':MoveBlock(-1)<cr>')
  vnoremap('<A-l>', ':MoveHBlock(1)<cr>')
  vnoremap('<A-h>', ':MoveHBlock(-1)<cr>')

  -- Cokeline
  nnoremap('<C-A-h>', '<Plug>(cokeline-switch-prev)')
  nnoremap('<C-A-l>', '<Plug>(cokeline-switch-next)')
  nnoremap('<A-a>', '<Plug>(cokeline-focus-prev)')
  nnoremap('<A-s>', '<Plug>(cokeline-focus-next)')

  for i = 1,9 do
    nnoremap(('<Leader>%s'):format(i), ('<Plug>(cokeline-focus-%s)'):format(i))
  end

  -- copies filepath to clipboard by pressing yf
  nnoremap('yf', ':let @+=expand("%:p")<cr>')
  -- copies pwd to clipboard: command yd
  nnoremap('yd', ':let @+=expand("%:p:h")<cr>')

  -- Leader maps
  map_leader({
    -- packer.nvim
    mc = '<cmd>PackerCompile<cr>',
    mi = '<cmd>PackerInstall<cr>',
    mu = '<cmd>PackerUpdate<cr>',
    ms = '<cmd>PackerSync<cr>',

    -- vim-twiggy and git_actions
    gcop = '<cmd>Twiggy<cr>',
    gcb = '<cmd>GitActionsCheckoutB<cr>'
  })

  -- Clip board system
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

  -- Abbreviation
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

  -- check syntax highlight groups
  vim.cmd([[
    function! SynstackCheck() abort
      if !exists("*synstack")
        return
      endif
      echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
    endfunction
  ]])

  nnoremap('<leader>sg', ':call SynstackCheck()<cr>')
end

return maps
