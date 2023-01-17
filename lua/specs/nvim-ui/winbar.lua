local M = {'utilyre/barbecue.nvim'}

M.dependencies = {
  'neovim/nvim-lspconfig',
  'smiteshp/nvim-navic',
}

M.config = function()
  require('barbecue').setup({})
end

return M