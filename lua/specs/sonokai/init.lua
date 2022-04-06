local M = {'sainnhe/sonokai'}

M.config = function()
  vim.g.sonokai_style = 'shusia'
  vim.g.sonokai_better_performance = 1

  vim.cmd([[colorscheme sonokai]])
end

return M