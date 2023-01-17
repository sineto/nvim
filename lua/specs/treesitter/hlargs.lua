local M = {'m-demare/hlargs.nvim'}

M.dependencies = {
  'nvim-treesitter/nvim-treesitter'
}

M.config = function()
  require('hlargs').setup()
end

return M