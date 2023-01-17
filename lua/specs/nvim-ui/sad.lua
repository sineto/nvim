local M = {'ray-x/sad.nvim'}

M.dependencies = {
  { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' },
}

M.config = function()
  require('sad').setup({})
end

return M