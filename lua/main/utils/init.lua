local M = {}

local cmd = vim.cmd

function M.map(mode, lhs, rhs)
  vim.api.nvim_set_keymap(mode, lhs, rhs, { silent = true })
end

function M.map_opts(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function M.noremap(mode, lhs, rhs)
  vim.api.nvim_set_keymap(mode, lhs, rhs, { noremap = true, silent = true })
end

function M.nnoremap(lhs, rhs) M.noremap('n', lhs, rhs) end
function M.inoremap(lhs, rhs) M.noremap('i', lhs, rhs) end
function M.vnoremap(lhs, rhs) M.noremap('v', lhs, rhs) end

function M.map_leader_keys(mappings, mode)
  for map, cmdm in pairs(mappings) do
    M.map(mode or 'n', string.format('<leader>%s', map), cmdm)
  end
end

function M.create_augroup(name, autocmds)
  cmd('augroup ' .. name)
  cmd('autocmd!')
  for _, autocmd in ipairs(autocmds) do
      cmd('autocmd ' .. table.concat(autocmd, ' '))
  end
  cmd('augroup END')
end

return M