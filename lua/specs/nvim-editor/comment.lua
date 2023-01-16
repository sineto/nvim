local M = {'terrortylor/nvim-comment'}

M.config = function()
  require('nvim_comment').setup({
    comment_empty = false
  })

  local u = require('core.utils')
  local nnoremap = u.nnoremap
  local vnoremap = u.vnoremap
  
  nnoremap('<C-_>', ':CommentToggle<cr>')
  vnoremap('<C-_>', ':CommentToggle<cr>')
end

return M