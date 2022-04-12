local M = {}

local command = vim.api.nvim_command

M.checkout = function (args, value)
  command('!git checkout ' .. args .. value)
end

return M