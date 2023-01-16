local M = {'~/Devspace/personal/sinokai.nvim'}

M.requires = {'rktjmp/lush.nvim'}

M.config = function()
  require('sinokai').setup({})
  vim.cmd('colorscheme sinokai')
end

return M