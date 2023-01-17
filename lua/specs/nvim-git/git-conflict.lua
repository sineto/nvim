local M = {'akinsho/git-conflict.nvim'}

M.version = '*'

M.dependencies = {
  'https://gitlab.com/yorickpeterse/nvim-pqf.git',
}

M.config = function()
  require('git-conflict').setup()
  require('pqf').setup()
end

return M