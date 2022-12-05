local M = {'junegunn/fzf.vim'}

M.requires = {
  {'junegunn/fzf'},
}

M.cond = function()
	return vim.fn.executable('fzf') == 1
end

M.setup = function()
  vim.g.fzf_layout = {
    up = '~45%',
  }

  require('core.utils').map('n', '<C-p>', '<cmd>Files<cr>')
  require('core.utils').map('n', '<C-A-b>', '<cmd>Buffers<cr>')

  require('core.utils').map_leader_keys({
    fa = '<cmd>Ag<cr>',
    fr = '<cmd>Rg<cr>',
  })
end

return M